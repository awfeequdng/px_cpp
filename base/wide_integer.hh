#pragma once

#include <cstddef>
#include <cstdint>
#include <initializer_list>
#include <limits>
#include <type_traits>

namespace wide {
template <size_t Bits, typename Signed>
class integer;
} // namespace wide

namespace std
{
template <size_t Bits, typename Signed, size_t Bits2, typename Signed2>
struct common_type<wide::integer<Bits, Signed>, wide::integer<Bits2, Signed2>>;

template <size_t Bits, typename Signed, typename Arithmetic>
struct common_type<wide::integer<Bits, Signed>, Arithmetic>;

template <typename Arithmetic, size_t Bits, typename Signed>
struct common_type<Arithmetic, wide::integer<Bits, Signed>>;
} // namespace std

namespace wide {
template <std::size_t Bits, typename Signed>
class integer {
public:
    using base_type = uint64_t;
    using signed_base_type = int64_t;

    // ctors
    constexpr integer() noexcept = default;

    template <typename T>
    constexpr integer(T rhs) noexcept;

    template <typename T>
    constexpr integer(std::initializer_list<T> il) noexcept;

    // assignment
    template <size_t Bits2, typename Signed2>
    constexpr integer<Bits, Signed>& operator=(const integer<Bits2, Signed2>& rhs) noexcept;

    template <typename Arithmetic>
    constexpr integer<Bits, Signed>& operator=(Arithmetic rhs) noexcept;

    template <typename Arithmetic>
    constexpr integer<Bits, Signed>& operator*=(const Arithmetic rhs) noexcept;

    template <typename Arithmetic>
    constexpr integer<Bits, Signed>& operator/=(const Arithmetic rhs) noexcept;

    template <typename Arithmetic>
    constexpr integer<Bits, Signed>& operator+=(const Arithmetic rhs) noexcept(std::is_same_v<Signed, unsigned>);

    template <typename Arithmetic>
    constexpr integer<Bits, Signed>& operator-=(const Arithmetic rhs) noexcept(std::is_same_v<Signed, unsigned>);

    template <typename Integral>
    constexpr integer<Bits, Signed>& operator%=(const Integral& rhs);

    template <typename Integral>
    constexpr integer<Bits, Signed>& operator&=(const Integral& rhs) noexcept;

    template <typename Integral>
    constexpr integer<Bits, Signed>& operator|=(const Integral& rhs) noexcept;

    template <typename Integral>
    constexpr integer<Bits, Signed>& operator^=(const Integral& rhs) noexcept;

    constexpr integer<Bits, Signed>& operator<<=(int n) noexcept;
    constexpr integer<Bits, Signed>& operator>>=(int n) noexcept;

    constexpr integer<Bits, Signed>& operator++() noexcept(std::is_same_v<Signed, unsigned>);
    constexpr integer<Bits, Signed>& operator++(int) noexcept(std::is_same_v<Signed, unsigned>);
    constexpr integer<Bits, Signed>& operator--() noexcept(std::is_same_v<Signed, unsigned>);
    constexpr integer<Bits, Signed>& operator--(int) noexcept(std::is_same_v<Signed, unsigned>);

    // observers
    constexpr explicit operator bool() const noexcept;

    template <typename T, typename = std::enable_if_t<std::is_arithmetic_v<T>, T>>
    constexpr operator T() const noexcept;

    constexpr operator long double() const noexcept;
    constexpr operator double() const noexcept;
    constexpr operator float() const noexcept;

    struct _impl;

    base_type items[_impl::item_count];

private:
    template<size_t Bits2, typename Signed2>
    friend class integer;

    friend class std::numeric_limits<integer<Bits, signed>>;
    friend class std::numeric_limits<integer<Bits, unsigned>>;

};

template <typename T>
static constexpr bool ArithmeticConcept() noexcept;

template <class T1, class T2>
using _only_arithmetic = std::enable_if_t<ArithmeticConcept<T1>() && ArithmeticConcept<T2>()>;

template <typename T>
static constexpr bool IntegralConcept() noexcept;

template <class T1, class T2>
using _only_integer = std::enable_if_t<IntegralConcept<T1>() && IntegralConcept<T2>()>;

// Unary operators
template <size_t Bits, typename Signed>
constexpr integer<Bits, Signed> operator~(const integer<Bits, Signed>& lhs) noexcept;

template <size_t Bits, typename Signed>
constexpr integer<Bits, Signed> operator-(const integer<Bits, Signed>& lhs) noexcept(std::is_same_v<Signed, unsigned>);

template <size_t Bits, typename Signed>
constexpr integer<Bits, Signed> operator+(const integer<Bits, Signed>& lhs) noexcept(std::is_same_v<Signed, unsigned>);

// Binary operators
template <size_t Bits, typename Signed, size_t Bits2, typename Signed2>
std::common_type_t<integer<Bits, Signed>, integer<Bits2, Signed2>> constexpr
operator*(const integer<Bits, Signed> & lhs, const integer<Bits2, Signed2> & rhs);
template <typename Arithmetic, typename Arithmetic2, class = _only_arithmetic<Arithmetic, Arithmetic2>>
std::common_type_t<Arithmetic, Arithmetic2> constexpr operator*(const Arithmetic & rhs, const Arithmetic2 & lhs);

template <size_t Bits, typename Signed, size_t Bits2, typename Signed2>
std::common_type_t<integer<Bits, Signed>, integer<Bits2, Signed2>> constexpr
operator/(const integer<Bits, Signed> & lhs, const integer<Bits2, Signed2> & rhs);
template <typename Arithmetic, typename Arithmetic2, class = _only_arithmetic<Arithmetic, Arithmetic2>>
std::common_type_t<Arithmetic, Arithmetic2> constexpr operator/(const Arithmetic & rhs, const Arithmetic2 & lhs);

template <size_t Bits, typename Signed, size_t Bits2, typename Signed2>
std::common_type_t<integer<Bits, Signed>, integer<Bits2, Signed2>> constexpr
operator+(const integer<Bits, Signed> & lhs, const integer<Bits2, Signed2> & rhs);
template <typename Arithmetic, typename Arithmetic2, class = _only_arithmetic<Arithmetic, Arithmetic2>>
std::common_type_t<Arithmetic, Arithmetic2> constexpr operator+(const Arithmetic & rhs, const Arithmetic2 & lhs);

template <size_t Bits, typename Signed, size_t Bits2, typename Signed2>
std::common_type_t<integer<Bits, Signed>, integer<Bits2, Signed2>> constexpr
operator-(const integer<Bits, Signed> & lhs, const integer<Bits2, Signed2> & rhs);
template <typename Arithmetic, typename Arithmetic2, class = _only_arithmetic<Arithmetic, Arithmetic2>>
std::common_type_t<Arithmetic, Arithmetic2> constexpr operator-(const Arithmetic & rhs, const Arithmetic2 & lhs);

template <size_t Bits, typename Signed, size_t Bits2, typename Signed2>
std::common_type_t<integer<Bits, Signed>, integer<Bits2, Signed2>> constexpr
operator%(const integer<Bits, Signed> & lhs, const integer<Bits2, Signed2> & rhs);
template <typename Integral, typename Integral2, class = _only_integer<Integral, Integral2>>
std::common_type_t<Integral, Integral2> constexpr operator%(const Integral & rhs, const Integral2 & lhs);

template <size_t Bits, typename Signed, size_t Bits2, typename Signed2>
std::common_type_t<integer<Bits, Signed>, integer<Bits2, Signed2>> constexpr
operator&(const integer<Bits, Signed> & lhs, const integer<Bits2, Signed2> & rhs);
template <typename Integral, typename Integral2, class = _only_integer<Integral, Integral2>>
std::common_type_t<Integral, Integral2> constexpr operator&(const Integral & rhs, const Integral2 & lhs);

template <size_t Bits, typename Signed, size_t Bits2, typename Signed2>
std::common_type_t<integer<Bits, Signed>, integer<Bits2, Signed2>> constexpr
operator|(const integer<Bits, Signed> & lhs, const integer<Bits2, Signed2> & rhs);
template <typename Integral, typename Integral2, class = _only_integer<Integral, Integral2>>
std::common_type_t<Integral, Integral2> constexpr operator|(const Integral & rhs, const Integral2 & lhs);

template <size_t Bits, typename Signed, size_t Bits2, typename Signed2>
std::common_type_t<integer<Bits, Signed>, integer<Bits2, Signed2>> constexpr
operator^(const integer<Bits, Signed> & lhs, const integer<Bits2, Signed2> & rhs);
template <typename Integral, typename Integral2, class = _only_integer<Integral, Integral2>>
std::common_type_t<Integral, Integral2> constexpr operator^(const Integral & rhs, const Integral2 & lhs);

// TODO: Integral
template <size_t Bits, typename Signed>
constexpr integer<Bits, Signed> operator<<(const integer<Bits, Signed> & lhs, int n) noexcept;

template <size_t Bits, typename Signed>
constexpr integer<Bits, Signed> operator>>(const integer<Bits, Signed> & lhs, int n) noexcept;

template <size_t Bits, typename Signed, typename Int, typename = std::enable_if_t<!std::is_same_v<Int, int>>>
constexpr integer<Bits, Signed> operator<<(const integer<Bits, Signed> & lhs, Int n) noexcept
{
    return lhs << int(n);
}
template <size_t Bits, typename Signed, typename Int, typename = std::enable_if_t<!std::is_same_v<Int, int>>>
constexpr integer<Bits, Signed> operator>>(const integer<Bits, Signed> & lhs, Int n) noexcept
{
    return lhs >> int(n);
}

template <size_t Bits, typename Signed, size_t Bits2, typename Signed2>
constexpr bool operator<(const integer<Bits, Signed> & lhs, const integer<Bits2, Signed2> & rhs);
template <typename Arithmetic, typename Arithmetic2, class = _only_arithmetic<Arithmetic, Arithmetic2>>
constexpr bool operator<(const Arithmetic & rhs, const Arithmetic2 & lhs);

template <size_t Bits, typename Signed, size_t Bits2, typename Signed2>
constexpr bool operator>(const integer<Bits, Signed> & lhs, const integer<Bits2, Signed2> & rhs);
template <typename Arithmetic, typename Arithmetic2, class = _only_arithmetic<Arithmetic, Arithmetic2>>
constexpr bool operator>(const Arithmetic & rhs, const Arithmetic2 & lhs);

template <size_t Bits, typename Signed, size_t Bits2, typename Signed2>
constexpr bool operator<=(const integer<Bits, Signed> & lhs, const integer<Bits2, Signed2> & rhs);
template <typename Arithmetic, typename Arithmetic2, class = _only_arithmetic<Arithmetic, Arithmetic2>>
constexpr bool operator<=(const Arithmetic & rhs, const Arithmetic2 & lhs);

template <size_t Bits, typename Signed, size_t Bits2, typename Signed2>
constexpr bool operator>=(const integer<Bits, Signed> & lhs, const integer<Bits2, Signed2> & rhs);
template <typename Arithmetic, typename Arithmetic2, class = _only_arithmetic<Arithmetic, Arithmetic2>>
constexpr bool operator>=(const Arithmetic & rhs, const Arithmetic2 & lhs);

template <size_t Bits, typename Signed, size_t Bits2, typename Signed2>
constexpr bool operator==(const integer<Bits, Signed> & lhs, const integer<Bits2, Signed2> & rhs);
template <typename Arithmetic, typename Arithmetic2, class = _only_arithmetic<Arithmetic, Arithmetic2>>
constexpr bool operator==(const Arithmetic & rhs, const Arithmetic2 & lhs);

template <size_t Bits, typename Signed, size_t Bits2, typename Signed2>
constexpr bool operator!=(const integer<Bits, Signed> & lhs, const integer<Bits2, Signed2> & rhs);
template <typename Arithmetic, typename Arithmetic2, class = _only_arithmetic<Arithmetic, Arithmetic2>>
constexpr bool operator!=(const Arithmetic & rhs, const Arithmetic2 & lhs);


} // namespace wide

namespace std {
template<size_t Bits, typename Signed>
struct hash<wide::integer<Bits, Signed>>;

} // namespace std

#include "wide_integer_impl.hh"
