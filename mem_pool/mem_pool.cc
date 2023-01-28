#if !NDEBUG

#include "tracer_new.hh"
#include <atomic>
#include <iostream>

void* operator new(size_t size, const char *file, long line) {
    void *p = malloc(size);
    return p;
}

void *operator new(size_t size) {
    void *p = malloc(size);
    return p;
}

void operator delete(void *p) {
    free(p);
}


#endif // !NDEBUG