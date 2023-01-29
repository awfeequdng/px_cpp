
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
    void add(void *p, size_t size, const char* file, long line) {
        bool val = false;
        if (!adding_info_.compare_exchange_strong(val, true)) {
            return;
        }
        // std::cout << "my operator new, " << p << ", size:" << size << ", file:" << file << ", line:" << line << std::endl;
        tracer_info_[p] = TracerNewInfo(file, line);
        adding_info_.store(false);
    }

    void remove(void *p) {
        auto it = tracer_info_.find(p);
        if (it != tracer_info_.end()) {
            // std::cout << "remove: " << p << ", file: " << it->second.file() << ", line:" << it->second.line() << std::endl;
            tracer_info_.erase(it);
        }
    }
    void dump();
public:
    static std::atomic<bool> ready;
private:
    std::unordered_map<void*, TracerNewInfo> tracer_info_;
    std::atomic<bool> adding_info_{false};

};

extern TracerNew tracer_new;

#endif // !NDEBUG

