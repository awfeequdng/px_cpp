#include <iostream>
#include <unordered_map>

#include "Allocator.hh"

int main() {
    std::cout << "hello world" << std::endl;
    Allocator<true, true> allocator;

    size_t size = 100;
    void *p = allocator.alloc(size);

    if (p) {
        std::cout << "alloc address : " << std::hex << p << std::endl;
    }
    allocator.free(p, size);
    allocator.free(p, size);

    return 0;
}
