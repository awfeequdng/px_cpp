#include <iostream>

#include "debug.hh"

struct test_v1 {
    int a;
    char c;
    long b;
};

int main() {
    int *p = new int;
    test_v1 *p1 = new test_v1();

#ifdef _P64
    std::cout << "P64" << std::endl;
#endif

    delete p;
    delete p1;
    return 0;
}
