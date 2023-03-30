#include "MemoryTracker.hh"
#include "MemoryTrackerBlockerInThread.hh"
#include "base/defines.hh"

#include <atomic>
#include <iostream>
#include <stdexcept>
#include <string>

static constexpr size_t log_peak_memory_usage_every = 1ULL << 30;

MemoryTracker total_memory_tracker(nullptr, VariableContext::Global);

MemoryTracker::MemoryTracker(VariableContext level_) : parent(&total_memory_tracker), level(level_) {}
MemoryTracker::MemoryTracker(MemoryTracker * parent_, VariableContext level_) : parent(parent_), level(level_) {}

MemoryTracker::~MemoryTracker() {
    if ((level == VariableContext::Process || level == VariableContext::User) && peak) {
        try{
            logPeakMemoryUsage();
        } catch (...) {
            // Exception in Logger, intentionally sqallow.
        }
    }
}

void MemoryTracker::logPeakMemoryUsage() const {
    const auto* description = description_ptr.load(std::memory_order_relaxed);
    std::cout << "MemoryTracker: "
        << "Peak memory usage" << (description ? " " + std::string(description) : "") << ": " << peak
        // << "Peak memory usage" << (description ? " " + std::string(description) : "") << ": " << ReadableSize(peak);
        << std::endl;
}

void MemoryTracker::logMemoryUsage(Int64 current) const {
    const auto* description = description_ptr.load(std::memory_order_relaxed);
    std::cout << "MemoryTracker: "
        << "Peak memory usage" << (description ? " " + std::string(description) : "") << ": " << current
        // << "Peak memory usage" << (description ? " " + std::string(description) : "") << ": " << ReadableSize(current)
        << std::endl;
}

void MemoryTracker::allocImpl(Int64 size, bool throw_if_memory_exceeded) {
    // std::cout << "not impl MemoryTracker::allocImpl yet." << std::endl;
    if (size < 0)
        throw std::runtime_error("Negative size: " + std::to_string(size) + " is passed to MemoryTracker. It is a bug.");

    if (MemoryTrackerBlockerInThread::isBlocked(level)) {
        // Since the MemoryTrackerBlockerInThread should respect the level, we should go to the next parent.
        if (auto* loaded_next = parent.load(std::memory_order_relaxed)) {
            loaded_next->allocImpl(size, throw_if_memory_exceeded);
        }
        return;
    }
    // Using memory_order_relaxed means that if allocations are done simultaneously.
    // We allow exception about memory limit exceeded to be thrown only on next allocation.
    // So, we allow over-allocations.
    Int64 will_be = size + amount.fetch_add(size, std::memory_order_relaxed);

    Int64 current_hard_limit = hard_limit.load(std::memory_order_relaxed);
    Int64 current_profiler_limit = profiler_limit.load(std::memory_order_relaxed);

    // Cap the limit to the total_memory_tracker, since it may include some drift
    // For user-level memory tracker.
    // And since total_memory_tracker is reset to the process resident
    // memory peridicallyin (AsynchronousMetrics::update()), any limit can be
    // capped to it , to avoid possible drift.
    if (unlikely(current_hard_limit
        && will_be > current_hard_limit
        && level == VariableContext::User)) {
        Int64 total_amount = total_memory_tracker.get();
        if (amount > total_amount) {
            set(total_amount);
            will_be = size + total_amount;
        }
    }

    bool peak_updated;
    if (throw_if_memory_exceeded) {
        // Prevent recursioin. Exception::ctor -> std::string -> new[] -> MemoryTracker::alloc
        MemoryTrackerBlockerInThread untrack_lock(VariableContext::Global);
        bool log_memory_usage = true;
        peak_updated = updatePeak(will_be, log_memory_usage);
    } else {
        bool log_memory_usage = false;
        peak_updated = updatePeak(will_be, log_memory_usage);
    }

    // todo: not used peak_unpdated yet.
    if (auto* load_ext = parent.load(std::memory_order_relaxed)) {
        load_ext->allocImpl(size, throw_if_memory_exceeded);
    }
}

void MemoryTracker::alloc(Int64 size) {
    bool throw_if_memory_exceeded = true;
    allocImpl(size, throw_if_memory_exceeded);
}

void MemoryTracker::allocNoThrow(Int64 size) {
    bool throw_if_memory_exceeded = false;
    allocImpl(size, throw_if_memory_exceeded);
}

bool MemoryTracker::updatePeak(Int64 will_be, bool log_memory_usage) {
    auto peak_old = peak.load(std::memory_order_relaxed);
    if (will_be > peak_old) { // Races doesn't matter. Could rewrite with CAS, but not worth.
        peak.store(will_be, std::memory_order_relaxed);
        if (log_memory_usage && (level == VariableContext::Process || level == VariableContext::Global)
            && will_be / log_peak_memory_usage_every > peak_old / log_peak_memory_usage_every)
            logMemoryUsage(will_be);

        return true;
    }
    return false;
}

void MemoryTracker::free(Int64 size) {
    // std::cout << "not impl  MemoryTracker::free yet." << std::endl;
    if (MemoryTrackerBlockerInThread::isBlocked(level)) {
        // Since the MemoryTrackerBlockerInThread should respect the level, we should go to the next parent.
        if (auto * loaded_next = parent.load(std::memory_order_relaxed))
            loaded_next->free(size);
        return;
    }

    Int64 accounted_size = size;
    if (level == VariableContext::Thread) {
        // Could become negative if memory allocated in this thread is freed in another one
        amount.fetch_sub(accounted_size, std::memory_order_relaxed);
    } else {
        Int64 new_amount = amount.fetch_sub(accounted_size, std::memory_order_relaxed) - accounted_size;
        // Sometimes, query could free some data, that was allocated outside of query context.
        // Example: cache eviction.
        // To avoid negative memory usage, we "saturate" amount.
        // Memory usage will be calculaged with some error.
        // Note: The code is not atomic, Not orth fo fix.
        if (unlikely(new_amount < 0)) {
            amount.fetch_sub(new_amount);
            accounted_size += new_amount;
        }
    }
    if (auto* loaded_ext = parent.load(std::memory_order_relaxed)) {
        loaded_ext->free(size);
    }
}

void MemoryTracker::resetCounters()
{
    amount.store(0, std::memory_order_relaxed);
    peak.store(0, std::memory_order_relaxed);
    soft_limit.store(0, std::memory_order_relaxed);
    hard_limit.store(0, std::memory_order_relaxed);
    profiler_limit.store(0, std::memory_order_relaxed);
}

void MemoryTracker::reset()
{
    // auto metric_loaded = metric.load(std::memory_order_relaxed);
    // if (metric_loaded != CurrentMetrics::end())
        // CurrentMetrics::sub(metric_loaded, amount.load(std::memory_order_relaxed));

    resetCounters();
}

void MemoryTracker::set(Int64 to) {
    amount.store(to, std::memory_order_relaxed);

    bool log_memory_usage = true;
    updatePeak(to, log_memory_usage);
}


void MemoryTracker::setSoftLimit(Int64 value)
{
    soft_limit.store(value, std::memory_order_relaxed);
}


void MemoryTracker::setHardLimit(Int64 value)
{
    hard_limit.store(value, std::memory_order_relaxed);
}

void MemoryTracker::setOrRaiseHardLimit(Int64 value)
{
    /// This is just atomic set to maximum.
    Int64 old_value = hard_limit.load(std::memory_order_relaxed);
    while ((value == 0 || old_value < value) && !hard_limit.compare_exchange_weak(old_value, value))
        ;
}

void MemoryTracker::setOrRaiseProfilerLimit(Int64 value)
{
    Int64 old_value = profiler_limit.load(std::memory_order_relaxed);
    while ((value == 0 || old_value < value) && !profiler_limit.compare_exchange_weak(old_value, value))
        ;
}