
#pragma once

#include <cstddef>
#include <unordered_map>

void *operator new(size_t size, const char *file, long line);
void operator delete(void *p);

class MyAllocator {
public:
    MyAllocator();
    ~MyAllocator();
};

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
    TracerNew() {}
    ~ TracerNew() {}
    void add(void *p, const char* file, long line) {
        tracer_info_[p] = TracerNewInfo(file, line);
    }
    void remove(void *p) {
        auto it = tracer_info_.find(p);
        if (it != tracer_info_.end()) {
            tracer_info_.erase(it);
        }
    }
    void dump();
private:
    std::unordered_map<void*, TracerNewInfo> tracer_info_;
};

extern TracerNew tracer_new;

#define new new(__FILE__, __LINE__)
