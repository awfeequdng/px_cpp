#include <iostream>
#include <type_traits>
#include <utility>
#include "type_traits.hh"
#include "array.hh"

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
    test_forward(type_traits::forward<T>(v));
    // 强制指定版本
    // test_forward(type_traits::forward<T>(v));
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


void test_decay() {
  std::cout << __FUNCTION__ << std::endl;
  std::cout << type_traits::is_same_v<type_traits::decay_t<const int &>, int> << std::endl;
  std::cout << type_traits::is_same_v<type_traits::decay_t<volatile const int &>, int> << std::endl;
  std::cout << type_traits::is_same_v<type_traits::decay_t<volatile int &>, int> << std::endl;
  std::cout << type_traits::is_same_v<type_traits::decay_t<int &>, int> << std::endl;
}

void test_array() {
  Array<10, int> arr;
  std::cout << "array<10, int> = ";
  for (int i = 0; i < arr.size(); i++) {
    // std::cout << arr[i] << " ";
    arr[i] = i;
  }
  for (int i = 0; i < arr.size(); i++) {
    std::cout << arr[i] << " ";
  }

  std::cout << std::endl;

  Array arr1 = {1, 2, 3, 4, 6, 7, 8, 9, 10, 11};
  for (int i = 0; i < arr1.size(); i++) {
    std::cout << arr1[i] << " ";
  }
  std::cout << std::endl;
}

int main() {
    test_forward();
    int i = 1;
    // type_traits::forward(i);
    // type_traits::forward(0);
    // test_forward1();
    // test_decay();
    test_array();
    type_traits::enable_if_t<true, int> a = 3;
    std::enable_if_t<true, int> b = 3;
    (type_traits::enable_if<true>::type )a;
    return 0;
}