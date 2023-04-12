#pragma once
#include "VariableContext.hh"

#include "base/types.hh"
#include <atomic>

// Tracks memory consumption.
// It throws an exception if amount of consumed memory become greater than certain limit.
// The same memory tracker could be simultaneously used in different threads.
class MemoryTracker {
private:
    std::atomic<Int64> amount{0};
    std::atomic<Int64> peak{0};
    std::atomic<Int64> soft_limit{0};
    std::atomic<Int64> hard_limit{0};
    std::atomic<Int64> profiler_limit{0};

    Int64 profiler_step = 0;

    // Singly-linked list. All information will be passed to subsequent memory trackers also (it allows to implement trackers hierarchy).
    // In terms of tree nodes it is the list of parents. Lifetime of these trackers should "include" lifetime of current tracker.
    std::atomic<MemoryTracker*> parent{};

    // You could specify custom metric to track memory usage.
    // std::atomic<CurrentMetrics::Metric> metric = CurrentMetrics::end();

    /// This description will be used as prefix into log messages (if isn't nullptr)
    std::atomic<const char *> description_ptr = nullptr;

    bool updatePeak(Int64 will_be, bool log_memory_usage);
    void logMemoryUsage(Int64 current) const;

    void setOrRaiseProfilerLimit(Int64 value);
public:
    static constexpr auto USAGE_EVENT_NAME = "MemoryTrackerUsage";

    explicit MemoryTracker(VariableContext level_ = VariableContext::Thread);
    explicit MemoryTracker(MemoryTracker* parent_, VariableContext level_ = VariableContext::Thread);
    ~MemoryTracker();

    VariableContext level;

    // Call the fllowing functions before calling of corresponding operations with memory allocators.
    void alloc(Int64 size);
    void allocNoThrow(Int64 size);
    void allocImpl(Int64 size, bool throw_if_memory_exceeded);

    void realloc(Int64 old_size, Int64 new_size) {
        Int64 addition = new_size - old_size;
        if (addition > 0) {
            alloc(addition);
        } else {
            free(-addition);
        }
    }

    // This function should be called after memory deallocation.
    void free(Int64 size);

    Int64 get() const {
        return amount.load(std::memory_order_relaxed);
    }

    void setSoftLimit(Int64 value);
    void setHardLimit(Int64 value);

    Int64 getSoftLimit() {
        return soft_limit.load(std::memory_order_relaxed);
    }

    /** Set limit if it was not set.
      * Otherwise, set limit to new value, if new value is greater than previous limit.
      */
    void setOrRaiseHardLimit(Int64 value);

    /// next should be changed only once: from nullptr to some value.
    /// NOTE: It is not true in MergeListElement
    void setParent(MemoryTracker * elem)
    {
        parent.store(elem, std::memory_order_relaxed);
    }

    MemoryTracker* getParent()
    {
        return parent.load(std::memory_order_relaxed);
    }

    void setDescription(const char * description)
    {
        description_ptr.store(description, std::memory_order_relaxed);
    }

    // Reset the accumulated data
    void resetCounters();

    // Reset the accumulated data and the parent.
    void reset();

    // Reset current counter to a new value.
    void set(Int64 to);

    // Prints info about peak memory consumption into log.
    void logPeakMemoryUsage() const;
};

extern MemoryTracker total_memory_tracker;
