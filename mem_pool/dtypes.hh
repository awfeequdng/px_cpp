#pragma once

#define LLT_ALIGN(x, sz) (((x) + (sz)-1) & ~((sz)-1))


// branch prediction annotations
#ifdef __GNUC__
#define __unlikely(x) __builtin_expect(!!(x), 0)
#define __likely(x)   __builtin_expect(!!(x), 1)
#define JL_EXTENSION __extension__
#else
#define __unlikely(x) (x)
#define __likely(x)   (x)
#define JL_EXTENSION
#endif


#ifdef __has_builtin
#  define jl_has_builtin(x) __has_builtin(x)
#else
#  define jl_has_builtin(x) 0
#endif

#if jl_has_builtin(__builtin_assume)
#define jl_assume(cond) (__extension__ ({               \
                __typeof__(cond) cond_ = (cond);        \
                __builtin_assume(!!(cond_));            \
                cond_;                                  \
            }))
#elif defined(__GNUC__)
static inline void jl_assume_(int cond)
{
    if (!cond) {
        __builtin_unreachable();
    }
}
#define jl_assume(cond) (__extension__ ({               \
                __typeof__(cond) cond_ = (cond);        \
                jl_assume_(!!(cond_));                  \
                cond_;                                  \
            }))
#else
#define jl_assume(cond) (cond)
#endif