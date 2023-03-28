#include "ThreadStatus.hh"
#include <mutex>
#include <vector>

std::vector<ThreadGrouStatus::ProfileEventsCounterAndMemory> ThreadGroupStatus::getProfileEventsCountersAndMemoryForThreads() {
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