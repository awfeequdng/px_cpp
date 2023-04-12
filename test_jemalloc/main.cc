#include <iostream>
#include <type_traits>
#include <unordered_map>


#include <jemalloc/jemalloc.h>

int main() {

    std::cout << std::is_constructible_v<bool, int> << std::endl;


    auto ptr = new int[1024];
    std::cout << "new ptr: " << ptr << ", size = " << 1024 * sizeof(int) << std::endl;

    auto actual_size = sallocx(ptr, 0);

    std::cout << "get actual_size from sallocx is: " << actual_size << std::endl;

    delete []ptr;
    std::cout << "delete ptr" << std::endl;


    return 0;
}
