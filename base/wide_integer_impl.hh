#pragma once

#include "throwError.hh"
#include <cstddef>
#include <type_traits>

namespace wide {

template<typename T>
struct IsWideInteger {
    static constexpr bool value = false;
};

template<std::size_t Bits, typename Signed>
struct IsWideInteger<integer<Bits, Signed>> {
    static constexpr bool value = true;
};

template <typename T>
static constexpr bool ArithmeticConcept() noexcept {
    return std::is_arithmetic_v<T> || IsWideInteger<T>::value;
}

template<typename T>
static constexpr bool IntegralConcept() noexcept {
    return std::is_integral_v<T> || IsWideInteger<T>::value;
}

template<typename T>
class IsTupleLike {
    template <typename U>
    static auto check(U* p) -> decltype(std::tuple_size<U>::value, int());
    template <typename>
    static void check(...);
public:
    static constexpr bool value = !std::is_void<decltype(check<T>(nullptr))>::value;
};

} // namespace wide
