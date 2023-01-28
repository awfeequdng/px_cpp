#include "alloc.hh"
#include <iostream>

void * operator new(size_t size, const char *file, long line) {
    void *p = malloc(size);
    // todo:
    tracer_new.add(p, file, line);
    return p;
}

void operator delete(void *p) {
    tracer_new.remove(p);
    free(p);
}

TracerNew tracer_new;

void TracerNew::dump() {
    for (auto &info : tracer_info_) {
        std::cout << "0x" << info.first << ":\t" << info.second.file() << "\tIn line: " << info.second.line() << std::endl;
    }
}

MyAllocator::MyAllocator() {

}

MyAllocator::~MyAllocator() {

}
