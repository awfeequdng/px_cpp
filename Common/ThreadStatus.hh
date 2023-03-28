#pragma once

#include "base/types.hh"
#include "base/noncopyable.hh"

#include "ProfileEvents.hh"
#include <functional>
#include <mutex>
#include <vector>
#include <unordered_set>

class ThreadStatus;
using ThreadStatusPtr = ThreadStatus *;

// Thread group is a collection of threads dedicated to single task
// ProfileEvents (counters) from a thread are propagated to thread group
class ThreadGroupStatus {
public:
    struct ProfileEventsCountersAndMemory {
        ProfileEvents::Counters::Snapshot counters;
        // Int64 memory_usage;
        UInt64 thread_id;
    };
    mutable std::mutex mutex;

    ProfileEvents::Counters performance_counters{VariableContext::Process};

    std::vector<UInt64> thread_ids;
    std::unordered_set<ThreadStatusPtr> threads;

    // The first thread created this thread group
    UInt64 master_thread_id = 0;

    std::vector<ProfileEventsCountersAndMemory> finished_threads_counters_memory;

    std::vector<ProfileEventsCountersAndMemory> getProfileEventsCountersAndMemoryForThreads();
};

using ThreadGroupStatusPtr = std::shared_ptr<ThreadGroupStatus>;

extern thread_local ThreadStatus* current_thread;

/** Encapsulates all per-thread info (ProfileEvents, MemoryTracker, query_id, query context, etc.).
  * The object must be created in thread function and destroyed in the same thread before the exit.
  * It is accessed through thread-local pointer.
  *
  * This object should be used only via "CurrentThread", see CurrentThread.h
  */
class ThreadStatus : noncopyable {
public:
    // Linux's PID (or TGTD) (the same id is shown by ps util)
    const UInt64 thread_id = 0;
    // Also called "nice" value. If it was changed to non-zero
    Int32 os_thread_priority = 0;

    // merge them into common entity
    ProfileEvents::Counters performance_counters{VariableContext::Thread};

    using Deleter = std::function<void()>;
    Deleter deleter;

public:
    ThreadStatus();
    ~ThreadStatus();
};

// Creates ThreadStatus for the main thread
class MainThreadStatus : public ThreadStatus {
public:
    static MainThreadStatus& getInstance();
    static ThreadStatus* get() { return main_thread; }
    static bool isMainThread() { return main_thread == current_thread; }

    ~MainThreadStatus();

private:
    MainThreadStatus();

    static ThreadStatus* main_thread;
};
