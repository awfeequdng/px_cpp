#include <iostream>
#include <unordered_map>
#include "type_traits.hh"
#include "array.hh"

using namespace std;

template <typename T>
void test_forward(T&& v) {
    my_traits::forward<T>(v);
}

void test_array() {
    Array<10, int> arr;
    for (int i = 0; i < 10; i++) {
        std::cout << arr[i] << std::endl;
    }

    Array arr1 = {1, 2, 3, 4, 5};
    for (int i = 0; i < 5; i++) {
        std::cout << arr1[i] << std::endl;
    }
}

int main() {
    std::cout << "hello world " << std::endl;
    int a = 3;
    test_forward(a);
    test_forward(3);

    my_traits::test_args(1, "22", 1.2);
    my_traits::forward<int>(22);

    test_array();
    return 0;
}
