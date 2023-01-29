
#pragma once

#if !NDEBUG
#include <cstddef>
#include <unordered_map>
#include <atomic>
#include <iostream>

void *operator new(size_t size, const char *file, long line);
void *operator new(size_t);
void operator delete(void *p) noexcept;

class TracerNew{
    class TracerNewInfo {
    public:
        TracerNewInfo(const char *file = nullptr, long line = 0) : file_(file), line_(line){}
        const char* file() const { return file_; }
        long line() const { return line_; }
    private:
        const char *file_;
        long line_;
    };
public:
    TracerNew() {
        ready.store(true);
    }
    ~ TracerNew() {
        dump();
        ready.store(false);
    }
    void add(void *p, size_t size, const char* file, long line);
    void remove(void *p);

    void dump();
public:
    static std::atomic<bool> ready;
private:
    std::unordered_map<void*, TracerNewInfo> tracer_info_;
    std::atomic<bool> adding_info_{false};

};

extern TracerNew tracer_new;

#endif // !NDEBUG

