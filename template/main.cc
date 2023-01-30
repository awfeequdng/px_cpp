#include <iostream>
#include <type_traits>
#include <utility>
#include "type_traits.hh"

void test_forward(int &&v) {
    std::cout << "right value: " << v << std::endl;
}

void test_forward(int &v) {
    std::cout << "left value: " << v << std::endl;
}

template<typename T>
void test(T &&v) {
    std::cout << "std::is_same_v<T, int>: " << std::is_same_v<T, int> << std::endl;
    std::cout << "std::is_same_v<T, int&>: " << std::is_same_v<T, int&> << std::endl;
    // std::cout << "std::is_same_v<decltype(v), int>: " << std::is_same_v<decltype(v), int> << std::endl;
    // std::cout << "std::is_same_v<decltype(v), int&>: " << std::is_same_v<decltype(v), int&> << std::endl;
    // std::cout << "std::is_same_v<decltype(v), int&&>: " << std::is_same_v<decltype(v), int&&> << std::endl;

    // 优先推到出T&版本，而不是T&&版本
    // test_forward(type_traits::forward(v));
    // 强制指定版本
    test_forward(type_traits::forward<T>(v));
    // test_forward(type_traits::forward<int&&>(20));
}

void test_forward() {
    std::cout << __FUNCTION__ << " ------------------ "<< std::endl;
    int i = 1;
    test(i);
    test(0);
}

template<typename T>
void test_t(T &&a) {
    std::cout << std::is_same_v<T, volatile int> << std::endl;
    std::cout << std::is_same_v<T, int> << std::endl;
    std::cout << std::is_same_v<T, int&> << std::endl;
    std::cout << std::is_same_v<T, int&&> << std::endl;
}

#include <utility>
#include <iostream>

void overloaded(const int& x)
{
  std::cout << "[lvalue]" << std::endl;
}

void overloaded(int&& x)
{
  std::cout << "[rvalue]" << std::endl;
}

template <class T> void fn(T&& x)
{
  overloaded(x);
  overloaded(std::forward<T>(x));
}

void test_forward1()
{
  int i = 10;
  overloaded(std::forward<int>(i));
  overloaded(std::forward<int&>(i));
  overloaded(std::forward<int&&>(i));

  fn(i);
  fn(std::move(i));
}

int main() {
    test_forward();
    test_forward1();

    return 0;
}