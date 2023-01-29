#pragma once

#include <mutex>
#if !NDEBUG

#include <cstddef>
#include <iostream>
#include <unordered_map>
#include <atomic>

void *malloc(size_t size);
void free(void *p);


class TracerMalloc{
    class TracerMallocInfo {
    public:
        TracerMallocInfo(const char *file = nullptr, long line = 0) : file_(file), line_(line){}
        const char* file() const { return file_; }
        long line() const { return line_; }
    private:
        const char *file_;
        long line_;
    };
public:
    TracerMalloc() {
        ready.store(true);
    }
    ~ TracerMalloc() {
        dump();
        ready.store(false);
    }
    void add(void *p, size_t size, const char* file, long line) {
        bool val = false;
        if (!adding_info_.compare_exchange_strong(val, true)) {
            return;
        }
        tracer_mtx_.lock();
        // 为什么注释掉这一行会出现一个内存泄漏的地址
        std::cout << "my malloc, " << p << ", size:" << size << ", file:" << file << ", line:" << line << std::endl;
        tracer_info_[p] = TracerMallocInfo(file, line);
        tracer_mtx_.unlock();
        adding_info_.store(false);
    }

    void remove(void *p) {
        std::lock_guard<std::mutex> lock(tracer_mtx_);
        auto it = tracer_info_.find(p);
        if (it != tracer_info_.end()) {
            std::cout << "my free: " << p << ", file: " << it->second.file() << ", line:" << it->second.line() << std::endl;
            tracer_info_.erase(it);
        }
    }
    void dump();
public:
    static std::atomic<bool> ready;
private:
    std::mutex tracer_mtx_; // 该锁用来保护tracer_info
    std::unordered_map<void*, TracerMallocInfo> tracer_info_;
    std::atomic<bool> adding_info_{false};
};

extern TracerMalloc tracer_malloc;

#endif // !NDEBUG