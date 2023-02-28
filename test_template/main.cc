#include <iostream>
#include <unordered_map>
#include "type_traits.hh"

using namespace std;

template <typename T>
void test_forward(T&& v) {
    my_traits::forward<T>(v);
}

int main() {
    std::cout << "hello world " << std::endl;
    int a = 3;
    test_forward(a);
    test_forward(3);

    my_traits::test_args(1, "22", 1.2);
    my_traits::forward<int>(22);
    return 0;
}
