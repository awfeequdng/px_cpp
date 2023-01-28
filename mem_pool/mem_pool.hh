
#pragma once

#if !NDEBUG
#include <cstddef>
#include <unordered_map>
#include <atomic>
#include <iostream>
#include "gc.hh"

void *operator new(size_t size, const char *file, long line);
void *operator new(size_t);
void operator delete(void *p);

class MemPool {
public:

};

#endif // !NDEBUG

