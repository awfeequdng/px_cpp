#include "Throttler.hh"

#include "stopwatch.hh"
#include "throwError.hh"
#include "sleep.hh"

#include <cmath>
#include <mutex>
#include <stdexcept>
#include <string>
#include <iostream>

// Just 10^9
static constexpr auto NS = 1'000'000'000UL;

// Tracking window. Actually the size is not really important. We just want to avoid
// throttles when there are no actions for a long period time.
static const double window_ns = 1ULL * NS;

void Throttler::add(size_t amount) {
    size_t new_count;
    // This outer variable is always equal to smoothed_speed.
    // We use to avoid race condition.
    double current_speed = 0;

    {
        std::lock_guard<std::mutex> lock(mutex);

        auto now = clock_gettime_ns_adjusted(prev_ns);
        // If prev_ns is equal to zero (first `add` call) we known nothing about speed
        // and don't track anything.
        if (max_speed && prev_ns != 0) {
            // Time spent to process the amount of bytes
            double time_spent = now - prev_ns;

            // The speed in bytes per second is equal to amount / time_spent in seconds
            auto new_speed = amount / (time_spent / NS);

            // We want to make old values of speed less important for our smoothed value
            // so we decay it's value with coef.
            auto decay_coeff = std::pow(0.5, time_spent / window_ns);

            // Weighted average between previous and new speed
            smoothed_speed = smoothed_speed * decay_coeff + (1 - decay_coeff) * new_speed;
            current_speed = smoothed_speed;
        }

        count += amount;
        new_count = count;
        prev_ns = now;
    }

    if (limit && new_count > limit) {
        throwError(limit_exceeded_exception_message + std::string(" Maximum: ") + std::to_string(limit));
    }

    if (max_speed && current_speed > max_speed) {
        // todo: 这段代码没有特别明白
        // If we was too fast then we have to sleep until our smoothed speed became <= max_speed
        int64_t sleep_time = -window_ns * std::log2(max_speed / current_speed);

        std::cout << "sleep time: " << sleep_time << std::endl;
        if (sleep_time > 0) {
            accumulated_sleep += sleep_time;
            sleepForNanoseconds(sleep_time);
            accumulated_sleep -= sleep_time;
        }
    }

    if (parent)
        parent->add(amount);
}

void Throttler::reset() {
    std::lock_guard<std::mutex> lock(mutex);

    count = 0;
    accumulated_sleep = 0;
    smoothed_speed = 0;
    prev_ns = 0;
}

bool Throttler::isThrottling() const {
    if (accumulated_sleep != 0)
        return true;
    if (parent)
        return parent->isThrottling();

    return false;
}
