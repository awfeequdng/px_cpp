#include "sleep.hh"

#include "ProfileEvents.hh"

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
    return 0;
}