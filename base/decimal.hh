#pragma once

#include "extended_types.hh"
#include <cstddef>
#include <limits>

template <class> struct Decimal;
class DateTime64;
using Decimal32 = Decimal<Int32>;
using Decimal64 = Decimal<Int64>;
using Decimal128 = Decimal<Int128>;
using Decimal256 = Decimal<Int256>;

template <typename T>
concept is_decimal =
    std::is_same_v<T, Decimal32>
    || std::is_same_v<T, Decimal64>
    || std::is_same_v<T, Decimal128>
    || std::is_same_v<T, Decimal256>
    || std::is_same_v<T, DateTime64>;

template <class T>
concept is_over_big_int =
    std::is_same_v<T, Int128>
    || std::is_same_v<T, UInt128>
    || std::is_same_v<T, Int256>
    || std::is_same_v<T, UInt256>
    || std::is_same_v<T, Decimal128>
    || std::is_same_v<T, Decimal256>;

template <class T> struct NativeTypeT { using Type = T; };
template <is_decimal T> struct NativeTypeT<T> { using Type = typename T::NativeType; };
template <class T> using NativeType = typename NativeTypeT<T>::Type;

// Own FieldType for Decimal
// It is only a "storage" for decimal
// To perform operations, you also have to provide a scale (number of digits after point).
template <typename T>
struct Decimal {
    using NativeType = T;

    constexpr Decimal() = default;
    constexpr Decimal(Decimal<T>&&) noexcept = default;
    constexpr Decimal(const Decimal<T>&) = default;

    constexpr Decimal(const T& value_): value(value_) {}

    template <typename U>
    constexpr Decimal(const Decimal<U>& x): value(x.value) {}

    constexpr Decimal<T>& operator=(Decimal<T>&&) noexcept = default;
    constexpr Decimal<T>& operator=(const Decimal<T>&) = default;

    constexpr operator T() const { return value; }

    template <typename U>
    constexpr U convertTo() const {
        if constexpr (is_decimal<U>) {
            return convertTo<typename U::NativeType>();
        } else {
            return static_cast<U>(value);
        }
    }

    const Decimal<T>& operator += (const T& x) { value += x; return *this; }
    const Decimal<T>& operator -= (const T& x) { value -= x; return *this; }
    const Decimal<T>& operator *= (const T& x) { value *= x; return *this; }
    const Decimal<T>& operator /= (const T& x) { value /= x; return *this; }
    const Decimal<T>& operator %= (const T& x) { value %= x; return *this; }

    template <typename U> const Decimal<T>& operator += (const Decimal<U>& x) { value += x.value; return *this; }
    template <typename U> const Decimal<T>& operator -= (const Decimal<U>& x) { value -= x.value; return *this; }
    template <typename U> const Decimal<T>& operator *= (const Decimal<U>& x) { value *= x.value; return *this; }
    template <typename U> const Decimal<T>& operator /= (const Decimal<U>& x) { value /= x.value; return *this; }
    template <typename U> const Decimal<T>& operator %= (const Decimal<U>& x) { value %= x.value; return *this; }

    /// This is to avoid UB for sumWithOverflow()
    void addOverflow(const T & x) { value += x; }

    T value;
};

template <typename T> inline bool operator< (const Decimal<T> & x, const Decimal<T> & y) { return x.value < y.value; }
template <typename T> inline bool operator> (const Decimal<T> & x, const Decimal<T> & y) { return x.value > y.value; }
template <typename T> inline bool operator<= (const Decimal<T> & x, const Decimal<T> & y) { return x.value <= y.value; }
template <typename T> inline bool operator>= (const Decimal<T> & x, const Decimal<T> & y) { return x.value >= y.value; }
template <typename T> inline bool operator== (const Decimal<T> & x, const Decimal<T> & y) { return x.value == y.value; }
template <typename T> inline bool operator!= (const Decimal<T> & x, const Decimal<T> & y) { return x.value != y.value; }

template <typename T> inline Decimal<T> operator+ (const Decimal<T> & x, const Decimal<T> & y) { return x.value + y.value; }
template <typename T> inline Decimal<T> operator- (const Decimal<T> & x, const Decimal<T> & y) { return x.value - y.value; }
template <typename T> inline Decimal<T> operator* (const Decimal<T> & x, const Decimal<T> & y) { return x.value * y.value; }
template <typename T> inline Decimal<T> operator/ (const Decimal<T> & x, const Decimal<T> & y) { return x.value / y.value; }
template <typename T> inline Decimal<T> operator- (const Decimal<T> & x) { return -x.value; }

class DateTime64 : public Decimal64 {
public:
    using Base = Decimal64;
    using Base::Base; // 类似于using Decimal64::Decimal64
    using NativeType = Base::NativeType;

    constexpr DateTime64(const Base& v): Base(v) {}
};

constexpr UInt64 max_uint_mask = std::numeric_limits<UInt64>::max();

namespace std {

    template <typename T>
    struct hash<Decimal<T>> {
        size_t operator()(const Decimal<T>& x) const { return hash<T>()(x.value); }
    };

    template <>
    struct hash<Decimal128>
    {
        size_t operator()(const Decimal128 & x) const
        {
            return std::hash<Int64>()(x.value >> 64)
                ^ std::hash<Int64>()(x.value & max_uint_mask);
        }
    };

    template <>
    struct hash<DateTime64>
    {
        size_t operator()(const DateTime64 & x) const
        {
            return std::hash<DateTime64::NativeType>()(x);
        }
    };

    template <>
    struct hash<Decimal256>
    {
        size_t operator()(const Decimal256 & x) const
        {
            // FIXME temp solution
            return std::hash<Int64>()(static_cast<Int64>(x.value >> 64 & max_uint_mask))
                ^ std::hash<Int64>()(static_cast<Int64>(x.value & max_uint_mask));
        }
    };

} // namespace std
