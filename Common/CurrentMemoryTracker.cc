#include "MemoryTracker.hh"
#include "CurrentThread.hh"
#include "CurrentMemoryTracker.hh"
namespace  {
MemoryTracker* getMemoryTracker() {
    if (auto* thread_memory_tracker = CurrentThread::getMemoryTracker()) {
        return thread_memory_tracker;
    }

    // Once the main thread is initialized,
    // total_memory_tracker is initialized too.
    // And can be used, since MainThreadStatus is required for profiling.
    if (MainThreadStatus::get()) {
        return &total_memory_tracker;
    }

    return nullptr;
}

} // Annonymous namespace

namespace CurrentMemoryTracker {

namespace  { // Annonymouse namespace 2

void allocImpl(Int64 size, bool throw_if_memory_exceeded) {
    if (auto* memory_tracker = getMemoryTracker()) {
        // if (current_thread) {
        //     // current_thread->un
        // } else { // total_memory_tracker only, ignore untracked_memory
        // }
        memory_tracker->allocImpl(size, throw_if_memory_exceeded);
    }
}

} // Annonymouse namespace 2

void check() {
    if (auto* memory_tracker = getMemoryTracker()) {
        memory_tracker->allocImpl(0, true);
    }
}

void alloc(Int64 size) {
    bool throw_if_memory_exceeded = true;
    allocImpl(size, throw_if_memory_exceeded);
}

void allocNoThrow(Int64 size) {
    bool throw_if_memory_exceeded = false;
    allocImpl(size, throw_if_memory_exceeded);
}

void realloc(Int64 old_size, Int64 new_size) {
    Int64 addition = new_size - old_size;
    addition > 0 ? alloc(addition) : free(-addition);
}

void free(Int64 size) {
    if (auto* memory_tracker = getMemoryTracker()) {
        // if (current_thread) {

        // } else { // total_memory_tracker only, ignore untracked_memory
        //     memory_tracker->free(size);
        // }
        memory_tracker->free(size);
    }
}

} // CurrentMemoryTracker

