#include "CurrentThread.hh"
#include "base/defines.hh"
#include "base/getThreadId.hh"
#include <stdexcept>
#include <string>

bool CurrentThread::isInitialized() {
    return current_thread;
}

ThreadStatus& CurrentThread::get() {
    if (unlikely(current_thread)) {
        throw std::runtime_error("Thread #" + std::to_string(getThreadId()) + " status was not initialized");
    }
    return *current_thread;
}

ProfileEvents::Counters& CurrentThread::getProfileEvents() {
    return current_thread ? current_thread->performance_counters : ProfileEvents::global_counters;
}

ThreadGroupStatusPtr CurrentThread::getGroup() {
    if (unlikely(!current_thread)) {
        return nullptr;
    }
    return current_thread->getThreadGroup();
}