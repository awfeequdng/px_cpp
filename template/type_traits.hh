#pragma once
#include <iostream>

namespace type_traits {

template <bool v>
struct bool_constant {
    static constexpr bool value = v;
};
using true_type = bool_constant<true>;
using false_type = bool_constant<false>;

template <typename T>
struct type_is {
    using type = T;
};

template <typename T>
T&& forward(T&& v) {
    std::cout << "forward T&&" << std::endl;
    return static_cast<T&&>(v);
}

template <typename T>
T&& forward(T& v) {
    std::cout << "forward T&" << std::endl;
    return static_cast<T&&>(v);
}

} // namespace type_traits
