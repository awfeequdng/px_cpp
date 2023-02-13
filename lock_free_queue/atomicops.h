#pragma once
#include <atomic>
#include <bits/types/struct_timespec.h>
#include <ctime>
#include <iostream>
#include <cstdint>
#include <sys/types.h>
#include <type_traits>
#include <semaphore.h>
#include <cassert>

namespace my_queue {

enum memory_order {
	memory_order_relaxed,
	memory_order_acquire,
	memory_order_release,
	memory_order_acq_rel,
	memory_order_seq_cst,

	// memory_order_sync: Forces a full sync:
	// #LoadLoad, #LoadStore, #StoreStore, and most significantly, #StoreLoad
	memory_order_sync = memory_order_seq_cst
};

inline void compiler_fence(memory_order order)
{
	switch (order) {
		case memory_order_relaxed: break;
		case memory_order_acquire: std::atomic_signal_fence(std::memory_order_acquire); break;
		case memory_order_release: std::atomic_signal_fence(std::memory_order_release); break;
		case memory_order_acq_rel: std::atomic_signal_fence(std::memory_order_acq_rel); break;
		case memory_order_seq_cst: std::atomic_signal_fence(std::memory_order_seq_cst); break;
		default: assert(false);
	}
}

inline void fence(memory_order order)
{
	switch (order) {
		case memory_order_relaxed: break;
		case memory_order_acquire: std::atomic_thread_fence(std::memory_order_acquire); break;
		case memory_order_release: std::atomic_thread_fence(std::memory_order_release); break;
		case memory_order_acq_rel: std::atomic_thread_fence(std::memory_order_acq_rel); break;
		case memory_order_seq_cst: std::atomic_thread_fence(std::memory_order_seq_cst); break;
		default: assert(false);
	}
}

template<typename T>
class weak_atomic
{
public:
    weak_atomic() : value() {}
	weak_atomic(weak_atomic const& other) : value(other.load()) {}
	weak_atomic(weak_atomic&& other) : value(std::move(other.load())) {}

    inline operator T() const { return load(); }

    inline T load() const { return value.load(std::memory_order_relaxed); }

    inline T fetch_add_acquire(T increment) {
        return value.fetch_add(increment, std::memory_order_acquire);
    }

    inline T fetch_add_release(T increment) {
        return value.fetch_add(increment, std::memory_order_release);
    }

    template<typename U>
    inline weak_atomic const& operator=(U&& x) {
        std::cout << "operator = (U&& x), x =" << x << std::endl;
        value.store(std::forward<U>(x), std::memory_order_relaxed);
        return *this;
    }

    inline weak_atomic const& operator=(weak_atomic const& other) {
        value.store(other.value.load(std::memory_order_relaxed), std::memory_order_relaxed);
        return *this;
    }

private:
	std::atomic<T> value;
};

namespace spsc_sema {

class Semaphore
{
private:
    sem_t m_sema;

    Semaphore(const Semaphore& othre);
    Semaphore& operator=(const Semaphore& othrer);

public:
    Semaphore(int initialCount = 0) : m_sema() {
        assert(initialCount >= 0);
        int rc = sem_init(&m_sema, 0, static_cast<unsigned int>(initialCount));
        assert(rc == 0);
    }

    ~Semaphore() {
        sem_destroy(&m_sema);
    }

    bool wait() {
        // http://stackoverflow.com/questions/2013181/gdb-causes-sem-wait-to-fail-with-eintr-error
		int rc;
		do
		{
		    rc = sem_wait(&m_sema);
		} while (rc == -1 && errno == EINTR);
        return rc == 0;
    }

    bool try_wait() {
        int rc;
        do {
            rc = sem_trywait(&m_sema);
        } while (rc == -1 && errno == EINTR);
        return rc == 0;
    }

    bool timed_wait(std::uint64_t usecs) {
        struct timespec ts;
        const int usecs_in_1_sec = 1000000;
        const int nsecs_in_1_sec = 1000000000;
        clock_gettime(CLOCK_REALTIME, &ts);
        ts.tv_sec += static_cast<time_t>(usecs / usecs_in_1_sec);
        ts.tv_nsec += static_cast<long>(usecs % usecs_in_1_sec) * 1000;
        if (ts.tv_nsec >= nsecs_in_1_sec) {
            ts.tv_nsec -= nsecs_in_1_sec;
            ++ts.tv_sec;
        }

        int rc;
        do {
            rc = sem_timedwait(&m_sema, &ts);
        } while (rc == -1 && errno == EINTR);
        return rc == 0;
    }

    void signal() {
        while (sem_post(&m_sema) == -1);
    }

    void signal(int count) {
        while (count-- > 0) {
            while (sem_post(&m_sema) == -1);
        }
    }
};

class LightweightSemaphore
{
public:
    using ssize_t = std::make_signed<size_t>::type;

private:
    weak_atomic<ssize_t> m_count;
    Semaphore m_sema;

    bool waitWithPartialSpinning(std::int64_t timeout_usecs = -1) {
        ssize_t oldCount;
		// Is there a better way to set the initial spin count?
        // If we lower it to 1000, testBenaphore becomes 15x slower on my Core i7-5930K Windows PC,
		// as threads start hitting the kernel semaphore.
        int spin = 1024;
        while (--spin >= 0) {
            if (m_count.load() > 0) {
                // todo: 这行代码的作用没有看懂啊？？？？？？
                m_count.fetch_add_acquire(-1);
                return true;
            }
        }
    }
};

} // namespace spsc_sema

} // namespace my_queue