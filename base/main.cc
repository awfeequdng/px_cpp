#include "sleep.hh"

#include "ProfileEvents.hh"

#include "Throttler.hh"
#include "stopwatch.hh"
#include "TokenBucket.hh"

#include "RateLimiter.hh"
#include "TokenBucket.hh"

#include <iostream>
#include <thread>

namespace ProfileEvents {
extern Event MEMORY_ALLOC;
}

void test_ratelimiter() {
    std::cout << "-------" << __FUNCTION__ << "---------" << std::endl;
    double requests_per_second = 1.0;
    double burst_size = 2.0;

    std::string ip = "127.0.0.1";

    // std::string is default key type
    RateLimiter<std::string> rate_limiter(requests_per_second,  burst_size);

    std::cout << rate_limiter.aquire(ip) << std::endl; // true
    std::cout << rate_limiter.aquire(ip) << std::endl; // true (burst)
    std::cout << rate_limiter.aquire(ip) << std::endl; // true (burst)
    std::cout << rate_limiter.aquire(ip) << std::endl; // false

    std::this_thread::sleep_for(std::chrono::seconds(1));

    std::cout << rate_limiter.aquire(ip) << std::endl; // true
    std::cout << rate_limiter.aquire(ip) << std::endl; // false (burst exhausted)
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

    test_ratelimiter();

    return 0;
}