#include <iostream>
#include <unordered_map>


#include <jemalloc/jemalloc.h>

int main() {

    auto ptr = new int[1024];
    std::cout << "new ptr: " << ptr << ", size = " << 1024 * sizeof(int) << std::endl;

    auto actual_size = sallocx(ptr, 0);

    std::cout << "get actual_size from sallocx is: " << actual_size << std::endl;

    delete []ptr;
    std::cout << "delete ptr" << std::endl;

    return 0;
}
