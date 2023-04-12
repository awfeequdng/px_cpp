#include "ThreadStatus.hh"
#include <mutex>
#include <vector>

#include "base/getThreadId.hh"

thread_local ThreadStatus* current_thread = nullptr;
// thread_local ThreadStatus* main_thread = nullptr;

std::vector<ThreadGroupStatus::ProfileEventsCountersAndMemory> ThreadGroupStatus::getProfileEventsCountersAndMemoryForThreads() {
    std::lock_guard<std::mutex> guard(mutex);

    // It is OK to move it, since it is enough to report statistics for the thread at least once.
    auto stats = std::move(finished_threads_counters_memory);
    for (auto* thread : threads) {
        stats.emplace_back(ProfileEventsCountersAndMemory{
            thread->performance_counters.getPartiallyAtomicSnapshot(),
            // thread->memory_tracker.get(),
            thread->thread_id,
        });
    }
    return stats;
}
ThreadStatus::ThreadStatus()
    : thread_id{getThreadId()} {
    current_thread = this;
}

ThreadStatus::~ThreadStatus() {
    if (thread_group) {
        std::lock_guard<std::mutex>(thread_group->mutex);
        thread_group->finished_threads_counters_memory.emplace_back(ThreadGroupStatus::ProfileEventsCountersAndMemory{
            performance_counters.getPartiallyAtomicSnapshot(),
            // memory_tracker.get(),
            thread_id,
        });
        thread_group->threads.erase(this);
    }

    if (deleter)
        deleter();

    // Only change current_thread if it's currently being used by this ThreadStatus
    if (current_thread == this) {
        current_thread = nullptr;
    }
}

ThreadStatus* MainThreadStatus::main_thread = nullptr;
/// NOTE: 在主线程开始的地方调用一次MainThreadStatus::getInstance()，从而得到主线程的状态，
/// 然后其他线程中通过ThreadStatus status；创建子线程的状态。
/// 主线程的状态只能通过MainThreadStatus::getInstance()创建
MainThreadStatus& MainThreadStatus::getInstance() {
    static MainThreadStatus thread_status;
    return thread_status;
}

MainThreadStatus::MainThreadStatus() {
    main_thread = current_thread;
}

MainThreadStatus::~MainThreadStatus() {
    main_thread = nullptr;
}
