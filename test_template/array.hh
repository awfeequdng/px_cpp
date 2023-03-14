#pragma once
#include <cstdint>
#include <stdexcept>
#include <string>
#include <type_traits>

template <size_t N, typename T>
struct Array {
    T _data[N] = {T()};
    T& operator[](size_t idx) {
        if (idx < N) return _data[idx];
        throw std::logic_error("idx out of range: " + std::to_string(idx));
    }
};

template <typename... Args>
Array(const Args&...) -> Array<sizeof...(Args), std::common_type_t<Args...>>;