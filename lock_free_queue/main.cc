#include <iostream>
#include <stdexcept>
#include <string>

#include "atomicops.h"

using namespace std;

int main() {
    std::cout << "lock free queue" << std::endl;
    my_queue::weak_atomic<int> a;
    a = 3;
    a = 4.2;
    a = '1';
    std::cout << "a = " << a << std::endl;

    return 0;
}

