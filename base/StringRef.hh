#pragma once

#include <cassert>
#include <stdexcept>
#include <string>
#include <vector>
#include <functional>
#include <iosfwd>

#include "types.hh"
#include "unaligned.hh"

#include "city.h"

#if defined (__SSE2__)
#include <emmintrin.h>
#endif

#if defined (__SSE4_2__)
    #include <smmintrin.h>
    #include <nmmintrin.h>
    #define CRC_INT _mm_crc32_u64
#endif

// The std::string_view-like container to avoid creating strings to find substrings in the hash table.
struct StringRef {
    const char* data = nullptr;
    size_t size = 0;

    // Non-constexpr due to reinterpret_cast.
    template <typename CharT>
    requires (sizeof(CharT) == 1)
    StringRef(const CharT* data_, size_t size_) : data(reinterpret_cast<const char*>(data_)), size(size_) {
        // Sanity check for overflowd values.
        assert(size < 0x8000000000000000ULL);
    }

    constexpr StringRef(const char* data_, size_t size_) : data(data_), size(size_) {}

    StringRef(const std::string& s) : data(s.data()), size(s.size()) {}
    constexpr explicit StringRef(std::string_view s) : data(s.data()), size(s.size()) {}
    constexpr StringRef(const char* data_) : StringRef(std::string_view{data_}) {}
    constexpr StringRef() = default;

    bool empty() const { return size == 0; }

    std::string toString() const { return std::string(data, size); }
    explicit operator std::string() const { return toString(); }

    std::string_view toView() const { return std::string_view(data, size); }
    constexpr explicit operator std::string_view() const { return std::string_view(data, size); }
};

using StringRefs = std::vector<StringRef>;

#if defined (__SSE2__)

// Compare strings for equality.
// The approach is controversial and does not win in all cases.
// For more information, see hash_map_string_2.cpp
inline bool compareSSE2(const char* p1, const char* p2) {
    return 0xffff == _mm_movemask_epi8(_mm_cmpeq_epi8(
        _mm_loadu_si128(reinterpret_cast<const __m128i*>(p1)),
        _mm_loadu_si128(reinterpret_cast<const __m128i*>(p2))
    ));
}

inline bool compareSSE2x4(const char* p1, const char* p2) {
    return 0xff == _mm_movemask_epi8(
        _mm_and_si128(
            _mm_and_si128(
                _mm_cmpeq_epi8(
                    _mm_loadu_si128(reinterpret_cast<const __m128i*>(p1)),
                    _mm_loadu_si128(reinterpret_cast<const __m128i*>(p2))),
                _mm_cmpeq_epi8(
                    _mm_loadu_si128(reinterpret_cast<const __m128i*>(p1) + 1),
                    _mm_loadu_si128(reinterpret_cast<const __m128i*>(p2) + 1))),
            _mm_and_si128(
                _mm_cmpeq_epi8(
                    _mm_loadu_si128(reinterpret_cast<const __m128i*>(p1) + 2),
                    _mm_loadu_si128(reinterpret_cast<const __m128i*>(p2) + 2)),
                _mm_cmpeq_epi8(
                    _mm_loadu_si128(reinterpret_cast<const __m128i*>(p1) + 3),
                    _mm_loadu_si128(reinterpret_cast<const __m128i*>(p2) + 3)))));
}

inline bool memequalSSE2Wide(const char* p1, const char* p2, size_t size) {
    // The order of branches and the trick with overlapping comparisons
    // are the same as in memcpy implementation.
    // See the comments in base/glibc-compatibility/memcpy/memcpy.h

    if (size <= 16) {
        if (size >= 8) {
            // todo: 如果size为8，那下面就执行了两次相同的拷贝和比较了，是否多余呢？
            // Chunks of 8..16 bytes.
            return unalignedLoad<uint64_t>(p1) == unalignedLoad<uint64_t>(p2)
                && unalignedLoad<uint64_t>(p1 + size - 8) == unalignedLoad<uint64_t>(p2 + size - 8);
        } else if (size >= 4) {
            return unalignedLoad<uint32_t>(p1) == unalignedLoad<uint32_t>(p2)
                && unalignedLoad<uint32_t>(p1 + size - 4) == unalignedLoad<uint32_t>(p2 + size - 4);
        } else if (size >= 2) {
            return unalignedLoad<uint16_t>(p1) == unalignedLoad<uint16_t>(p2)
                && unalignedLoad<uint16_t>(p1 + size - 2) == unalignedLoad<uint16_t>(p2 + size - 2);
        } else if (size >= 1) {
            return *p1 == *p2;
        }
        return true;
    }

    while (size >= 64) {
        if (compareSSE2x4(p1, p2)) {
            p1 += 64;
            p2 += 64;
            size -= 64;
        } else {
            return false;
        }
    }

    switch (size / 16) {
        case 3: if (!compareSSE2(p1 + 32, p2 + 32)) return false; [[fallthrough]];
        case 2: if (!compareSSE2(p1 + 16, p2 + 16)) return false; [[fallthrough]];
        case 1: if (!compareSSE2(p1, p2)) return false;
    }

    return compareSSE2(p1 + size - 16, p2 + size - 16);
}

#endif // __SSE2__

inline bool operator==(const StringRef& lhs, const StringRef& rhs) {
    if (lhs.size != rhs.size)
        return false;

    if (lhs.size == 0)
        return true;

#if defined (__SSE2__)
    return memequalSSE2Wide(lhs.data, rhs.data, lhs.size);
#else
    return 0 == memcpy(lhs.data, rhs.data, lhs.size);
#endif
}

inline bool operator!= (StringRef lhs, StringRef rhs)
{
    return !(lhs == rhs);
}

inline bool operator< (StringRef lhs, StringRef rhs)
{
    int cmp = memcmp(lhs.data, rhs.data, std::min(lhs.size, rhs.size));
    return cmp < 0 || (cmp == 0 && lhs.size < rhs.size);
}

inline bool operator> (StringRef lhs, StringRef rhs)
{
    int cmp = memcmp(lhs.data, rhs.data, std::min(lhs.size, rhs.size));
    return cmp > 0 || (cmp == 0 && lhs.size > rhs.size);
}

struct StringRefHash64 {
    size_t operator() (const StringRef& x) const {
        return CityHash_v1_0_2::CityHash64(x.data, x.size);
    }
};