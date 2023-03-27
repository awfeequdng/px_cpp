#include "sleep.hh"

#include "ProfileEvents.hh"

#include "Throttler.hh"
#include "stopwatch.hh"

#include <iostream>

namespace ProfileEvents {
extern Event MEMORY_ALLOC;
}

int main() {
    std::cout << "sleep for 2 seconds" << std::endl;
    sleepForSeconds(2);

    ProfileEvents::increment(ProfileEvents::MEMORY_ALLOC);
    ProfileEvents::increment(ProfileEvents::MEMORY_ALLOC);
    std::cout << "ProfileEvents::MemoryAlloc: " << ProfileEvents::global_counters[ProfileEvents::MEMORY_ALLOC].load() << std::endl;
    ProfileEvents::increment(ProfileEvents::MEMORY_ALLOC, 4);
    std::cout << "ProfileEvents::MemoryAlloc: " << ProfileEvents::global_counters[ProfileEvents::MEMORY_ALLOC].load() << std::endl;

    Stopwatch stopwatch;
    Throttler throttler(2);
    throttler.add(1);
    throttler.add(10);
    std::cout << "sleep time: " << stopwatch.elapsedSeconds() << "s" << std::endl;
    throttler.add(10);
    std::cout << "sleep time: " << stopwatch.elapsedSeconds() << "s" << std::endl;
    return 0;
}