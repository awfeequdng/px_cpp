#include <iostream>
#include <stdexcept>
#include <string>
#include <memory>
#include <time.h>
#include <thread>


/* 计算 left - right;并将结果转化为纳秒.
 * @warning 当 left,right 之间相差太大时,可能会溢出.比如相差 560 年... T_T
 */
inline uint_fast64_t GetTimespecDiff(const struct timespec *left, const struct timespec *right) noexcept
{
    uint_fast64_t la = left->tv_sec;
    uint_fast64_t lb = left->tv_nsec;
    uint_fast64_t ra = right->tv_sec;
    uint_fast64_t rb = right->tv_nsec;
    return (la - ra) * 1000000000 + (lb - rb);
}

inline uint_fast64_t GetTimespecDiff(const struct timespec &left, const struct timespec &right) noexcept {
    return GetTimespecDiff(&left, &right);
}

template <typename F>
uint_fast64_t ExecuteTimeGet(size_t iter,size_t times,F &&func)
{
    uint_fast64_t time_use_min = UINT_FAST64_MAX;

    for (size_t i = 0; i < iter; ++i) {
        struct timespec begin_time,end_time;
        clock_gettime(CLOCK_REALTIME,&begin_time);
        for (size_t j = 0; j < times; ++j)
            func();
        clock_gettime(CLOCK_REALTIME,&end_time);

        uint_fast64_t current_time_use = GetTimespecDiff(&end_time,&begin_time);
        if (current_time_use < time_use_min)
            time_use_min = current_time_use;
    }

    return time_use_min;
}

void thread_main(unsigned char *addr,const char *thread_name)
{
    auto time_use = ExecuteTimeGet(7,300000000U,[&]{
        unsigned char var = *addr;
        ++var;
        *addr = var;
    });
    printf("thread: %s;time_use: %lu\n", thread_name,time_use); // 单位:纳秒
}

#define ENABLE_FALSE_SHARING
/* 若定义了 ENABLE_FALSE_SHARING,此时 2 个线程之间会 false sharing;
 * 否则 2 个线程之间不会 false sharing.
 */
#if defined(ENABLE_FALSE_SHARING)
unsigned char data[2];
#else
unsigned char data[256];
#endif

int
main(int ,char **)
{
    std::thread thread1 {thread_main, &data[0], "thread1"};
    std::thread thread2 {thread_main, &data[sizeof(data) / sizeof(unsigned char) - 1], "thread2"};
    thread1.join();
    thread2.join();
    return 0;
}


