#if !NDEBUG

#include "tracer_new.hh"
#include <atomic>
#include <iostream>

void* operator new(size_t size, const char *file, long line) {
    void *p = malloc(size);
    tracer_new.add(p, size, file, line);
    return p;
}

void *operator new(size_t size) {
    void *p = malloc(size);
    tracer_new.add(p, size, "unknow file", -1);
    return p;
}

void operator delete(void *p) {
    if (TracerNew::ready) {
        tracer_new.remove(p);
    }
    free(p);
}

std::atomic<bool> TracerNew::ready{false};

TracerNew tracer_new;

void TracerNew::dump() {
    std::cout << "leaky addr: " << std::endl;
    for (auto &info : tracer_info_) {
        std::cout << info.first << ":\t" << info.second.file() << "\tIn line: " << info.second.line() << std::endl;
    }
}

#endif // !NDEBUG