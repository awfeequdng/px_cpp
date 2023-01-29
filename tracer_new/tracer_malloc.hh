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
        TracerMallocInfo(void *caller, const char *file = nullptr, long line = 0) : caller_(caller), file_(file), line_(line) {}
        TracerMallocInfo(const char *file = nullptr, long line = 0) : file_(file), line_(line) {}
        const void *caller() const { return caller_; }
        const char* file() const { return file_; }
        long line() const { return line_; }
    private:
        void *caller_{0};
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
    void add(void *p, size_t size, void*caller, const char* file, long line);
    void add(void *p, size_t size, const char* file, long line);

    void remove(void *p);

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