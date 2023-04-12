#pragma once

#include <memory>
#include <string>
#include "defines.hh"
#include "ThreadStatus.hh"

// Collection of static methods to work with thread-local objects.
//
class CurrentThread {
public:
    static bool isInitialized();

    // Handler to current thread
    static ThreadStatus& get();

    // Group to which belongs current thread
    static ThreadGroupStatusPtr getGroup();

    static ProfileEvents::Counters& getProfileEvents();

    inline ALWAYS_INLINE static MemoryTracker* getMemoryTracker() {
        if (unlikely(!current_thread)) {
            return nullptr;
        }
        return &current_thread->memory_tracker;
    }

    // Add current thread to a group associated with the thread group
    static void attachTo(const ThreadGroupStatusPtr& thread_group);
    // Is useful for a ThreadPoll tasks
    static void attachToIfDetatched(const ThreadGroupStatusPtr& thread_group);

    // Update ProfileEvents and dumps info
    static void finalizePerformanceCounters();
private:
    static void defaultThreadDeleter();
};
