#include <iostream>
#include <utility>

// #include

int main() {
    std::cout << "hello world" << std::endl;

    std::cout << std::tuple_size<std::pair<int, std::string>>::value << std::endl;
    std::cout << typeid(decltype(int(), 2ULL, float())).name() << std::endl;
    return 0;
}