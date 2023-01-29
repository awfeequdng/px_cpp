#if !NDEBUG

#include "tracer_new.hh"
#include <atomic>
#include <iostream>

void* operator new(size_t size, const char *file, long line) {
    void *p = malloc(size);
    if (TracerNew::ready) {
        tracer_new.add(p, size, file, line);
    }
    return p;
}

void *operator new(size_t size) {
    void *p = malloc(size);
    if (TracerNew::ready) {
        tracer_new.add(p, size, "unknow file", -1);
    }
    return p;
}

void operator delete(void *p) noexcept {
    if (TracerNew::ready) {
        tracer_new.remove(p);
    }
    free(p);
}

std::atomic<bool> TracerNew::ready{false};

TracerNew tracer_new;

void TracerNew::add(void *p, size_t size, const char* file, long line) {
    bool val = false;
    if (!adding_info_.compare_exchange_strong(val, true)) {
        return;
    }
    // std::cout << "my operator new, " << p << ", size:" << size << ", file:" << file << ", line:" << line << std::endl;
    tracer_info_[p] = TracerNewInfo(file, line);
    adding_info_.store(false);
}

void TracerNew::remove(void *p) {
    auto it = tracer_info_.find(p);
    if (it != tracer_info_.end()) {
        // std::cout << "remove: " << p << ", file: " << it->second.file() << ", line:" << it->second.line() << std::endl;
        tracer_info_.erase(it);
    }
}

void TracerNew::dump() {
    std::cout << "new leaky addr: " << std::endl;
    for (auto &info : tracer_info_) {
        std::cout << info.first << ":\t" << info.second.file() << "\tIn line: " << info.second.line() << std::endl;
    }
}

#endif // !NDEBUG