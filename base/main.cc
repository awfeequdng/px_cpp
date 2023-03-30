#include "sleep.hh"

#include "Throttler.hh"
#include "stopwatch.hh"
#include "TokenBucket.hh"

#include "RateLimiter.hh"
#include "TokenBucket.hh"

#include <cmath>
#include <iostream>
#include <thread>

#include "getThreadId.hh"
#include "Cpuid.hh"

#include "NaNUtils.h"


#include "wide_integer.hh"

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

void test_cpuid() {
    std::cout << "--------" << __FUNCTION__ << "-----------" << std::endl;
#define PRINT_FLAG(X) std::cout << "have_"#X << ": " << CPU::CpuFlagsCache::have_##X << std::endl;
    CPU_ID_ENUMERATE(PRINT_FLAG)
#undef PRINT_FLAG
}

void test_NaNUtils() {

    std::cout << "--------" << __FUNCTION__ << "-----------" << std::endl;
    std::cout << isFinite(2) << std::endl;
    std::cout << isFinite(2222222222222222.0) << std::endl;
    std::cout << isNaN(2) << std::endl;
    std::cout << isNaN(NaNOrZero<float>()) << std::endl;
    std::cout << isNaN(NaNOrZero<double>()) << std::endl;
    std::cout << isNaN(NaNOrZero<int>()) << std::endl;
}

int main() {
    std::cout << "sleep for 2 seconds" << std::endl;
    sleepForSeconds(2);

    Stopwatch stopwatch;
    Throttler throttler(2);
    throttler.add(1);
    throttler.add(10);
    std::cout << "sleep time: " << stopwatch.elapsedSeconds() << "s" << std::endl;

    test_ratelimiter();

    std::cout << "get thread id: " << getThreadId() << std::endl;

    test_cpuid();
    test_NaNUtils();
    return 0;
}