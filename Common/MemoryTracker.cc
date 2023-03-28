#include "MemoryTracker.hh"
#include <atomic>
#include <iostream>

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
    std::cout << "not impl MemoryTracker::allocImpl yet." << std::endl;
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
    std::cout << "not impl  MemoryTracker::free yet." << std::endl;
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