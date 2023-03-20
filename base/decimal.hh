#pragma once

#include "types.hh"

// todo: 对decimal的定义还没有进行实现，以后再做处理
template <typename T>
concept is_decimal_v =
    std::is_same_v<T, Int32>
    || std::is_same_v<T, Int64>;