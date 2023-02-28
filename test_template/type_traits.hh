#pragma once
#include <iostream>

namespace my_traits {

template <bool val>
struct bool_constant {
    constexpr static bool value = val;
};

using true_type = bool_constant<true>;
using false_type = bool_constant<false>;

template <typename T>
struct type_is {
    using type = T;
};

// remove const
template <typename T>
struct remove_const : type_is<T> {
};

template <typename T>
struct remove_const<const T> : type_is<T> {};

template <typename T>
using remove_const_t = typename remove_const<T>::type;

// remove reference
template <typename T>
struct remove_reference : type_is<T> {};

template <typename T>
struct remove_reference<T&> : type_is<T> {};

template <typename T>
struct remove_reference<T&&> : type_is<T> {};

template <typename T>
using remove_reference_t = typename remove_reference<T>::type;

// remove volatile
template <typename T>
struct remove_volatile : type_is<T> {};

template <typename T>
struct remove_volatile<volatile T> : type_is<T> {};

template <typename T>
using remove_volatile_t = typename remove_volatile<T>::type;

// remove const volatile
template <typename T>
struct remove_cv : type_is<T> {};

template <typename T>
using remove_cv_t = remove_volatile_t<remove_const_t<T>>;

// is same
template <typename T, typename U>
struct is_same : false_type {};

template <typename T>
struct is_same<T, T> : true_type {};

template <typename T, typename U>
constexpr bool is_same_v = is_same<T, U>::value;

// enable if
template <bool v, typename T = void>
struct enable_if {};

template <typename T>
struct enable_if<true, T> : type_is<T> {};

template <bool v, typename T = void>
using enable_if_t = typename enable_if<v, T>::type;

// decay
template <typename T>
struct decay : type_is<T> {};

template <typename T>
using decay_t = remove_volatile_t<remove_const_t<remove_reference_t<T>>>;

template <typename T>
T&& forward(remove_reference_t<T> &v) {
    std::cout << "forward T&, type of int&: " << is_same_v<int&, T> << std::endl;
    std::cout << "forward T&, type of int: " << is_same_v<int, T> << std::endl;
    return static_cast<T&&>(v);
}

template <typename T>
T&& forward(remove_reference_t<T> &&v) {
    std::cout << "forward T&&, type of int&: " << is_same_v<int&, T> << std::endl;
    std::cout << "forward T&&, type of int: " << is_same_v<int, T> << std::endl;
    return static_cast<T&&>(v);
}

template <typename...Args>
void test_args(Args... args) {
    ((std::cout << args << " "), ...);
    std::cout << std::endl;
}
// template <typename...Args>
// void forward(Args... args) {
//     test_args(forward<Args>(args)...);
// }

} // namespace my_traits
