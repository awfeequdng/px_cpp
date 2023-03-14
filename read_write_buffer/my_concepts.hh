#pragma once

#include <type_traits>
class ReadBuffer;
class WriteBuffer;

template<typename T>
concept ReadWriteBuffer = std::is_base_of_v<ReadBuffer, T> ||
                          std::is_base_of_v<WriteBuffer, T>;
