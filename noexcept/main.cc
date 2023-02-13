#include <iostream>
#include <stdexcept>
#include <vector>

#include "noexcept_false.hh"
#include "noexcept_true.hh"

// 对noexcept讲解的文章见：https://zhuanlan.zhihu.com/p/606070702

void throw_exception1() {
    std::cout << "throw exception1: " << std::endl;
    throw std::logic_error("noexcept(false)");
}

void throw_exception2() noexcept {
    std::cout << "throw exception2: " << std::endl;
    throw std::logic_error("noexcept(true)");
}

void test_exception() {
    try {
        throw_exception1();
    } catch (...) {
        std::cout << "catch exception from throw_exception1" << std::endl;
    }
    try {
        throw_exception2();
    } catch (...) {
        std::cout << "catch exception from throw_exception2" << std::endl;
    }
}

void test_copy() {
    std::cout << "test X ------------------------\n";
    std::vector<X> x_vector;
    for (int i = 0; i < 4; ++i) {
        X x;
        printf("x: %p\n",&x);
        x_vector.push_back(std::move(x));
    }


    std::cout << "\n\ntest X1 ------------------------\n";
    std::vector<X1> x1_vector;
    for (int i = 0; i < 4; ++i) {
        X1 x;
        printf("x: %p\n",&x);
        x1_vector.push_back(std::move(x));
    }
}

int main(int ,char **)
{
    // test_copy();
    test_exception();
    return 0;
}


