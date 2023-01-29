#include "tracer_malloc.hh"

#if !NDEBUG

#include <cstddef>
#include <cstdio>

#include <dlfcn.h>

void *(*malloc_f)(size_t) = NULL;
void(*free_f)(void*) = NULL;

// void init_malloc() __attribute__((constructor));
void init_malloc() {
    malloc_f = (void*(*)(size_t))dlsym(RTLD_NEXT, "malloc");
    free_f = (void(*)(void*))dlsym(RTLD_NEXT, "free");
}

void *malloc(size_t size) {
    if (malloc_f == NULL || free_f == NULL) {
        init_malloc();
    }
    void *p = malloc_f(size);
    if (p == NULL) return NULL;

    void *caller = __builtin_return_address(0);

    if (TracerMalloc::ready) {
        tracer_malloc.add(p, size, caller, "unknow file", -1);
    }
    return p;
}

void free(void *p) {
    if (malloc_f == NULL || free_f == NULL) {
        init_malloc();
    }
    if (TracerMalloc::ready) {
        tracer_malloc.remove(p);
    }
    free_f(p);
}

std::atomic<bool> TracerMalloc::ready{false};

TracerMalloc tracer_malloc;

void TracerMalloc::add(void *p, size_t size, const char* file, long line) {
    bool val = false;
    if (!adding_info_.compare_exchange_strong(val, true)) {
        return;
    }
    tracer_mtx_.lock();
    // todo: 为什么注释掉这一行会出现一个内存泄漏的地址
    // std::cout << "my malloc, " << p << ", size:" << size << ", file:" << file << ", line:" << line << std::endl;
    tracer_info_[p] = TracerMallocInfo(file, line);
    tracer_mtx_.unlock();
    adding_info_.store(false);
}

void TracerMalloc::add(void *p, size_t size, void*caller, const char* file, long line) {
    bool val = false;
    if (!adding_info_.compare_exchange_strong(val, true)) {
        return;
    }
    tracer_mtx_.lock();
    // todo: 为什么注释掉这一行会出现一个内存泄漏的地址
    // std::cout << "my malloc, " << p << ", caller:" << caller << ", size:" << size << ", file:" << file << ", line:" << line << std::endl;
    tracer_info_[p] = TracerMallocInfo(caller, file, line);
    tracer_mtx_.unlock();
    adding_info_.store(false);
}

void TracerMalloc::remove(void *p) {
    std::lock_guard<std::mutex> lock(tracer_mtx_);
    auto it = tracer_info_.find(p);
    if (it != tracer_info_.end()) {
        // std::cout << "my free: " << p << ", caller:" << it->second.caller() << ", file: " << it->second.file() << ", line:" << it->second.line() << std::endl;
        tracer_info_.erase(it);
    }
}

void TracerMalloc::dump() {
    std::cout << "malloc leaky addr: " << std::endl;
    for (auto &info : tracer_info_) {
        std::cout << info.first << "\tcaller: " << info.second.caller() << "\tfile: " << info.second.file() << "\tIn line: " << info.second.line() << std::endl;
    }
}

#endif // !NDEBUG