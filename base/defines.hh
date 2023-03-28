#pragma once

#ifndef likely
#   define likely(x)    (__builtin_expect(!!(x), 1))
#endif

#ifndef unlikely
#   define unlikely(x)    (__builtin_expect(!!(x), 0))
#endif

#define ALWAYS_INLINE __attribute__((__always_inline__))
#define NO_INLINE __attribute__((__no_inline__))
