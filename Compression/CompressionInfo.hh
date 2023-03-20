#pragma once

// Common defines for compression
#include <cstdint>
#define MAX_COMPRESSED_SIZE 0x40000000ULL  // 1GB

// one byte for method, 4 bytes from compressed size, 4 bytes for uncompressed size
#define COMPRESSED_BLOCK_HEADER_SIZE 9

enum class CompressionMethodByte : uint8_t {
    NONE = 0x02,
    LZ4  = 0x82,
    ZSTD = 0x90,
    Multiple    = 0x91,
    Delta       = 0x92,
    T64         = 0x93,
    DoubleDelta = 0X94,
    Gorilla     = 0x95,
    AES_128_GCM_SIV = 0x96,
    AES_256_GCM_SIV = 0x97
};