#include "ProfileEvents.hh"

#include <iostream>
#include <thread>

#include "ThreadStatus.hh"
#include "CurrentThread.hh"

#include "memory.hh"
#include "MemoryTracker.hh"

namespace ProfileEvents {
extern Event MEMORY_ALLOC;
}

void process1() {
    ThreadStatus thread_status;
    std::cout << "process1 current_thread is address: " << current_thread << std::endl;
    std::cout << "process1 is main Thread: " << MainThreadStatus::isMainThread() << std::endl;

}

void process2() {
    ThreadStatus thread_status;
    MainThreadStatus::getInstance();
    std::cout << "process2 current_thread is address: " << current_thread << std::endl;
    std::cout << "process2 is main Thread: " << MainThreadStatus::isMainThread() << std::endl;

}

void test_ThreadStatus() {

    std::cout << "current_thread is address: " << current_thread << std::endl;
    std::cout << "test_ThreadStatus is main Thread: " << MainThreadStatus::isMainThread() << std::endl;
    std::cout << "address of main thread: " << MainThreadStatus::get() << std::endl;

    std::thread th1(process1);
    std::thread th2(process2);
    th1.join();
    th2.join();

    std::cout << "current_thread: " << current_thread << std::endl;
    ProfileEvents::increment(ProfileEvents::MEMORY_ALLOC);
    ProfileEvents::increment(ProfileEvents::MEMORY_ALLOC);
    std::cout << "current thread profile events: ProfileEvents::MemoryAlloc: " << CurrentThread::getProfileEvents()[ProfileEvents::MEMORY_ALLOC].load() << std::endl;
    ProfileEvents::increment(ProfileEvents::MEMORY_ALLOC, 1);
    std::cout << "current thread profile events: ProfileEvents::MemoryAlloc: " << CurrentThread::getProfileEvents()[ProfileEvents::MEMORY_ALLOC].load() << std::endl;
    std::cout << "global profile events: ProfileEvents::MemoryAlloc: " << ProfileEvents::global_counters[ProfileEvents::MEMORY_ALLOC].load() << std::endl;
}

void sub_memory_tracker() {
    auto xx1 = new int[1024];

    std::cout << "sub_memory_tracker ------------new cur_tracker 1: " << CurrentThread::getMemoryTracker() << std::endl;
    std::cout << "sub_memory_tracker ------------total_memory_tracker 1: " << &total_memory_tracker << std::endl;

    std::cout << "total_memory_tracker alloc 0x: " << total_memory_tracker.get() << std::endl;
    // std::cout << "cur_tracker alloc 0x: " << CurrentThread::getMemoryTracker()->get() << std::endl;
    ThreadStatus thread_status;
    MainThreadStatus::getInstance();

    std::cout << "sub_memory_tracker ------------new cur_tracker 2: " << CurrentThread::getMemoryTracker() << std::endl;
    std::cout << "sub_memory_tracker ------------total_memory_tracker 2: " << &total_memory_tracker << std::endl;

    std::cout << "sub_memory_tracker current_thread is address 1: " << current_thread << std::endl;

    std::cout << "sub_memory_tracker current_thread is address 2: " << current_thread << std::endl;
    std::cout << "sub_memory_tracker is main Thread: " << MainThreadStatus::isMainThread() << std::endl;

    auto cur_tracker = CurrentThread::getMemoryTracker();
    std::cout << "------------cur_tracker xxxx: " << cur_tracker << std::endl;
    std::cout << "------------total_memory_tracker xxxx: " << &total_memory_tracker << std::endl;

    std::cout << "total_memory_tracker alloc 1x: " << total_memory_tracker.get() << std::endl;
    std::cout << "cur_tracker alloc 1x: " << cur_tracker->get() << std::endl;
    auto p = new int[1024];

    // ThreadStatus thread_status;
    cur_tracker = CurrentThread::getMemoryTracker();
    std::cout << "------------cur_tracker 2x: " << cur_tracker << std::endl;
    std::cout << "------------total_memory_tracker 2x: " << &total_memory_tracker << std::endl;

    std::cout << "total_memory_tracker alloc 2x: " << total_memory_tracker.get() << std::endl;
    std::cout << "cur_tracker alloc 2: " << cur_tracker->get() << std::endl;
    auto p2 = new char[1024];
    std::cout << "total_memory_tracker alloc 3x: " << total_memory_tracker.get() << std::endl;
    std::cout << "cur_tracker alloc 3x: " << cur_tracker->get() << std::endl;
    delete []p;
    std::cout << "total_memory_tracker alloc 4x: " << total_memory_tracker.get() << std::endl;
    std::cout << "cur_tracker alloc 4x: " << cur_tracker->get() << std::endl;
    delete []p2;

    std::cout << "total_memory_tracker alloc 5x: " << total_memory_tracker.get() << std::endl;
    std::cout << "cur_tracker alloc 5x: " << cur_tracker->get() << std::endl;

    delete []xx1;
    std::cout << "total_memory_tracker alloc 6x: " << total_memory_tracker.get() << std::endl;
    std::cout << "cur_tracker alloc 6x: " << cur_tracker->get() << std::endl;
}

void test_memory_tracker() {
    std::cout << "------------current_thread: " << current_thread << std::endl;
    auto cur_tracker = CurrentThread::getMemoryTracker();
    std::cout << "------------cur_tracker 1: " << cur_tracker << std::endl;
    std::cout << "------------total_memory_tracker 1: " << &total_memory_tracker << std::endl;

    std::cout << "test_memory_tracker: total_memory_tracker : alloc : 1 : " << total_memory_tracker.get() << std::endl;
    std::cout << "test_memory_tracker: cur_tracker : alloc : 1: " << cur_tracker->get() << std::endl;
    auto p = new int[1024];
    std::cout << "test_memory_tracker: total_memory_tracker : alloc : 2: " << total_memory_tracker.get() << std::endl;
    std::cout << "test_memory_tracker: cur_tracker : alloc : 2: " << cur_tracker->get() << std::endl;

    // ThreadStatus thread_status;
    // cur_tracker = CurrentThread::getMemoryTracker();
    std::cout << "------------cur_tracker 2: " << cur_tracker << std::endl;
    std::cout << "------------total_memory_tracker 2: " << &total_memory_tracker << std::endl;

    std::cout << "test_memory_tracker: total_memory_tracker : alloc : 3: " << total_memory_tracker.get() << std::endl;
    std::cout << "test_memory_tracker: cur_tracker : alloc : 3: " << cur_tracker->get() << std::endl;

    auto p2 = new char[1024];
    std::cout << "test_memory_tracker: total_memory_tracker : alloc : 4: " << total_memory_tracker.get() << std::endl;
    std::cout << "test_memory_tracker: cur_tracker : alloc : 4: " << cur_tracker->get() << std::endl;

    delete []p;
    std::cout << "test_memory_tracker: total_memory_tracker : alloc : 5: " << total_memory_tracker.get() << std::endl;
    std::cout << "test_memory_tracker: cur_tracker : alloc : 5: " << cur_tracker->get() << std::endl;

    delete []p2;

    std::cout << "test_memory_tracker: total_memory_tracker : alloc : 6: " << total_memory_tracker.get() << std::endl;
    std::cout << "test_memory_tracker: cur_tracker : alloc : 6: " << cur_tracker->get() << std::endl;

    // todo: 此处内存计数值会产生错误，因为生成线程的环境内存记录在cur_tracker中，但是在其释放的时候（current_thread为nil），却没有从cur_tracker中减去
    std::thread th(sub_memory_tracker);
    th.join();

    std::cout << "------------new cur_tracker 2: " << CurrentThread::getMemoryTracker() << std::endl;
    std::cout << "------------cur_tracker 2: " << cur_tracker << std::endl;
    std::cout << "------------total_memory_tracker 2: " << &total_memory_tracker << std::endl;

    std::cout << "test_memory_tracker: total_memory_tracker : alloc : 7: " << total_memory_tracker.get() << std::endl;
    std::cout << "test_memory_tracker: cur_tracker : alloc : 7: " << cur_tracker->get() << std::endl;

}
int main() {
    MainThreadStatus::getInstance();
    std::cout << "current_thread: " << current_thread << std::endl;
    std::cout << "current_thread is main: " << MainThreadStatus::isMainThread() << std::endl;
    ProfileEvents::increment(ProfileEvents::MEMORY_ALLOC);
    ProfileEvents::increment(ProfileEvents::MEMORY_ALLOC);
    std::cout << "global counters ProfileEvents::MemoryAlloc: " << ProfileEvents::global_counters[ProfileEvents::MEMORY_ALLOC].load() << std::endl;
    ProfileEvents::increment(ProfileEvents::MEMORY_ALLOC, 4);
    std::cout << "global counters ProfileEvents::MemoryAlloc: " << ProfileEvents::global_counters[ProfileEvents::MEMORY_ALLOC].load() << std::endl;

    std::cout << "alloc : " << total_memory_tracker.get() << std::endl;
    std::cout << "cur memtracker: alloc : " << CurrentThread::getMemoryTracker()->get() << std::endl;
    std::cout << "xxxxxxxxxxxx current_thread 1: " << current_thread << std::endl;
    test_ThreadStatus();
    std::cout << "xxxxxxxxxxxx current_thread 2: " << current_thread << std::endl;
    test_memory_tracker();
    std::cout << "xxxxxxxxxxxx current_thread 3: " << current_thread << std::endl;

    auto cur_tracker = CurrentThread::getMemoryTracker();
    std::cout << "total_memory_tracker : alloc : " << total_memory_tracker.get() << std::endl;
    std::cout << "cur_tracker : alloc : " << cur_tracker->get() << std::endl;
    auto p = new int;
    std::cout << "new ptr: " << p << std::endl;
    std::cout << "total_memory_tracker : alloc : " << total_memory_tracker.get() << std::endl;
    std::cout << "cur_tracker : alloc : " << cur_tracker->get() << std::endl;
    delete p;
    std::cout << "total_memory_tracker final : alloc : " << total_memory_tracker.get() << std::endl;
    std::cout << "cur_tracker final: alloc : " << cur_tracker->get() << std::endl;
    return 0;
}
