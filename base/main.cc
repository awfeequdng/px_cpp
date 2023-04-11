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


// #include "wide_integer.hh"
#include "extended_types.hh"

#include "decimal.hh"

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

void test_wide_integer() {
    std::cout << "--------- " << __FUNCTION__ << "_________" << std::endl;
    // using Int128 = wide::integer<128, signed>;
    // using UInt128 = wide::integer<128, unsigned>;
    // using Int256 = wide::integer<256, signed>;
    // using UInt256 = wide::integer<256, unsigned>;

    static_assert(sizeof(Int128) == 16);
    static_assert(sizeof(UInt128) == 16);
    static_assert(sizeof(UInt256) == 32);
    static_assert(sizeof(Int256) == 32);

    UInt128 a = 0xf, b = 0xffffffffffffffff;
    UInt128 c = a + b;
    UInt128 d = c - 0xff;
    std::cout << std::hex << "c = " << c.items[UInt128::_impl::big(0)] << " " << c.items[UInt128::_impl::big(1)] << std::endl;
    std::cout << std::hex << "d = " << d.items[UInt128::_impl::big(0)] << " " << d.items[UInt128::_impl::big(1)] << std::endl;
    // std::cout << "c = " << c.items[0] << c.items[3] << std::endl;
}

void test_decimal() {
    std::cout << "--------- " << __FUNCTION__ << "_________" << std::endl;
    NativeType<Decimal256> t256 = 20;
    NativeType<Decimal128> t128 = 20;

    std::cout << "typename of t256: " << typeid(t256).name() << std::endl;
    std::cout << "typename of t128: " << typeid(t128).name() << std::endl;
    Decimal256 d256 = t256;
    Decimal128 d128 = t128;
    Decimal64 d64 = 4;
    Decimal32 d32 = 5;
    std::cout << "hash d256 = " << std::hash<Decimal256>()(d256) << std::endl;
    std::cout << "hash d128 = " << std::hash<Decimal128>()(d128) << std::endl;
    std::cout << "hash d64 = " << std::hash<Decimal64>()(d64) << std::endl;
    std::cout << "hash d32 = " << std::hash<Decimal32>()(d32) << std::endl;
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
    test_wide_integer();
    test_decimal();
    return 0;
}