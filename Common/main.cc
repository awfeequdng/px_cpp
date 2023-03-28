#include "ProfileEvents.hh"

#include <iostream>
#include <thread>

#include "ThreadStatus.hh"

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
    ThreadStatus thread_status;
    MainThreadStatus::getInstance();
    std::cout << "current_thread is address: " << current_thread << std::endl;
    std::cout << "test_ThreadStatus is main Thread: " << MainThreadStatus::isMainThread() << std::endl;
    std::cout << "address of main thread: " << MainThreadStatus::get() << std::endl;

    std::thread th1(process1);
    std::thread th2(process2);
    th1.join();
    th2.join();
}

int main() {


    ProfileEvents::increment(ProfileEvents::MEMORY_ALLOC);
    ProfileEvents::increment(ProfileEvents::MEMORY_ALLOC);
    std::cout << "ProfileEvents::MemoryAlloc: " << ProfileEvents::global_counters[ProfileEvents::MEMORY_ALLOC].load() << std::endl;
    ProfileEvents::increment(ProfileEvents::MEMORY_ALLOC, 4);
    std::cout << "ProfileEvents::MemoryAlloc: " << ProfileEvents::global_counters[ProfileEvents::MEMORY_ALLOC].load() << std::endl;

    test_ThreadStatus();

    return 0;
}
