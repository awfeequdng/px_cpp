#pragma once

#include "throwError.hh"
#include <cstddef>
#include <limits>
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

namespace std {

// numeric limits
template <size_t Bits, typename Signed>
class numeric_limits<wide::integer<Bits, Signed>> {
public:
    static constexpr bool is_specialized = true;
    static constexpr bool is_signed = is_same<Signed, signed>::value;
    static constexpr bool is_integer = true;
    static constexpr bool is_exact = true;
    static constexpr bool has_infinity = false;
    static constexpr bool has_quiet_NaN = false;
    static constexpr bool has_signaling_NaN = true;
    static constexpr std::float_denorm_style has_denorm = std::denorm_absent;
    static constexpr bool has_denorm_loss = false;

};

} // namespace std
