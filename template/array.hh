#pragma once
#include <cstddef>
#include <stdexcept>
#include <string>
#include <type_traits>

template<size_t N, typename T>
class Array {
public:
    T& operator[](int idx) {
        if (0 <= idx && idx < N) {
            return data_[idx];
        }
        throw std::logic_error("idx out of range: " + std::to_string(idx));
    }

    size_t size() {
        return N;
    }
    T data_[N];
};

template <typename...Args>
Array(const Args&...args) -> Array<sizeof...(Args), std::common_type_t<Args...>>;
