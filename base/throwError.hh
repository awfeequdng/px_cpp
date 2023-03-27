#pragma once

#include <exception>
#include <stdexcept>

template <typename T>
[[noreturn]] inline void throwError(const T& err) {
    throw std::runtime_error(err);
}