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

    if (TracerMalloc::ready) {
        tracer_malloc.add(p, size, "unknow file", -1);
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

void TracerMalloc::dump() {
    std::cout << "malloc leaky addr: " << std::endl;
    for (auto &info : tracer_info_) {
        std::cout << info.first << ":\t" << info.second.file() << "\tIn line: " << info.second.line() << std::endl;
    }
}

#endif // !NDEBUG