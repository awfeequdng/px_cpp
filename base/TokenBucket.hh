#pragma once
#include <chrono>
#include <algorithm>

class TokenBucket {
public:
    TokenBucket(int capacity, int refillTokens, int refillTime) :
        capacity_(capacity), refillTokens_(refillTokens), refillTime_(refillTime),
        tokens_(capacity), lastRefillTime_(std::chrono::steady_clock::now()) {}

    bool consume(int tokens) {
        refill();
        if (tokens_ < tokens) {
            return false;
        }
        tokens_ -= tokens;
        return true;
    }

private:
    void refill() {
        auto now = std::chrono::steady_clock::now();
        auto timePassed = std::chrono::duration_cast<std::chrono::milliseconds>(now - lastRefillTime_);
        int tokensToAdd = timePassed.count() / refillTime_ * refillTokens_;
        tokens_ = std::min(capacity_, tokens_ + tokensToAdd);
        lastRefillTime_ = now;
    }

    int capacity_;
    int refillTokens_;
    int refillTime_;
    int tokens_;
    std::chrono::steady_clock::time_point lastRefillTime_;
};
