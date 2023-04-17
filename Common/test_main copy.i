# 1 "test_main.cc"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 447 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "test_main.cc" 2
# 1 "../contrib/jemalloc-cmake/include/jemalloc/jemalloc.h" 1 3



extern "C" {







# 1 "../contrib/jemalloc-cmake/include/jemalloc/jemalloc_defs.h" 1 3
# 13 "../contrib/jemalloc-cmake/include/jemalloc/jemalloc.h" 2 3
# 1 "../contrib/jemalloc-cmake/include/jemalloc/jemalloc_rename.h" 1 3
# 14 "../contrib/jemalloc-cmake/include/jemalloc/jemalloc.h" 2 3
# 1 "../contrib/jemalloc-cmake/include/jemalloc/jemalloc_macros.h" 1 3
# 1 "/usr/include/stdlib.h" 1 3 4
# 25 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/bits/libc-header-start.h" 1 3 4
# 33 "/usr/include/bits/libc-header-start.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 406 "/usr/include/features.h" 3 4
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 407 "/usr/include/features.h" 2 3 4
# 428 "/usr/include/features.h" 3 4
# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 450 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 451 "/usr/include/sys/cdefs.h" 2 3 4
# 1 "/usr/include/bits/long-double.h" 1 3 4
# 452 "/usr/include/sys/cdefs.h" 2 3 4
# 429 "/usr/include/features.h" 2 3 4
# 452 "/usr/include/features.h" 3 4
# 1 "/usr/include/gnu/stubs.h" 1 3 4
# 10 "/usr/include/gnu/stubs.h" 3 4
# 1 "/usr/include/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/gnu/stubs.h" 2 3 4
# 453 "/usr/include/features.h" 2 3 4
# 34 "/usr/include/bits/libc-header-start.h" 2 3 4
# 26 "/usr/include/stdlib.h" 2 3 4





# 1 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/stddef.h" 1 3 4
# 46 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 32 "/usr/include/stdlib.h" 2 3 4

extern "C" {





# 1 "/usr/include/bits/waitflags.h" 1 3 4
# 40 "/usr/include/stdlib.h" 2 3 4
# 1 "/usr/include/bits/waitstatus.h" 1 3 4
# 41 "/usr/include/stdlib.h" 2 3 4
# 55 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/bits/floatn.h" 1 3 4
# 119 "/usr/include/bits/floatn.h" 3 4
# 1 "/usr/include/bits/floatn-common.h" 1 3 4
# 24 "/usr/include/bits/floatn-common.h" 3 4
# 1 "/usr/include/bits/long-double.h" 1 3 4
# 25 "/usr/include/bits/floatn-common.h" 2 3 4
# 214 "/usr/include/bits/floatn-common.h" 3 4
typedef float _Float32;
# 251 "/usr/include/bits/floatn-common.h" 3 4
typedef double _Float64;
# 268 "/usr/include/bits/floatn-common.h" 3 4
typedef double _Float32x;
# 285 "/usr/include/bits/floatn-common.h" 3 4
typedef long double _Float64x;
# 120 "/usr/include/bits/floatn.h" 2 3 4
# 56 "/usr/include/stdlib.h" 2 3 4


typedef struct
  {
    int quot;
    int rem;
  } div_t;



typedef struct
  {
    long int quot;
    long int rem;
  } ldiv_t;





__extension__ typedef struct
  {
    long long int quot;
    long long int rem;
  } lldiv_t;
# 97 "/usr/include/stdlib.h" 3 4
extern size_t __ctype_get_mb_cur_max (void) throw () ;



extern double atof (const char *__nptr)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern int atoi (const char *__nptr)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern long int atol (const char *__nptr)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;



__extension__ extern long long int atoll (const char *__nptr)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;



extern double strtod (const char *__restrict __nptr,
        char **__restrict __endptr)
     throw () __attribute__ ((__nonnull__ (1)));



extern float strtof (const char *__restrict __nptr,
       char **__restrict __endptr) throw () __attribute__ ((__nonnull__ (1)));

extern long double strtold (const char *__restrict __nptr,
       char **__restrict __endptr)
     throw () __attribute__ ((__nonnull__ (1)));
# 140 "/usr/include/stdlib.h" 3 4
extern _Float32 strtof32 (const char *__restrict __nptr,
     char **__restrict __endptr)
     throw () __attribute__ ((__nonnull__ (1)));



extern _Float64 strtof64 (const char *__restrict __nptr,
     char **__restrict __endptr)
     throw () __attribute__ ((__nonnull__ (1)));
# 158 "/usr/include/stdlib.h" 3 4
extern _Float32x strtof32x (const char *__restrict __nptr,
       char **__restrict __endptr)
     throw () __attribute__ ((__nonnull__ (1)));



extern _Float64x strtof64x (const char *__restrict __nptr,
       char **__restrict __endptr)
     throw () __attribute__ ((__nonnull__ (1)));
# 176 "/usr/include/stdlib.h" 3 4
extern long int strtol (const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     throw () __attribute__ ((__nonnull__ (1)));

extern unsigned long int strtoul (const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     throw () __attribute__ ((__nonnull__ (1)));



__extension__
extern long long int strtoq (const char *__restrict __nptr,
        char **__restrict __endptr, int __base)
     throw () __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtouq (const char *__restrict __nptr,
           char **__restrict __endptr, int __base)
     throw () __attribute__ ((__nonnull__ (1)));




__extension__
extern long long int strtoll (const char *__restrict __nptr,
         char **__restrict __endptr, int __base)
     throw () __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtoull (const char *__restrict __nptr,
     char **__restrict __endptr, int __base)
     throw () __attribute__ ((__nonnull__ (1)));




extern int strfromd (char *__dest, size_t __size, const char *__format,
       double __f)
     throw () __attribute__ ((__nonnull__ (3)));

extern int strfromf (char *__dest, size_t __size, const char *__format,
       float __f)
     throw () __attribute__ ((__nonnull__ (3)));

extern int strfroml (char *__dest, size_t __size, const char *__format,
       long double __f)
     throw () __attribute__ ((__nonnull__ (3)));
# 232 "/usr/include/stdlib.h" 3 4
extern int strfromf32 (char *__dest, size_t __size, const char * __format,
         _Float32 __f)
     throw () __attribute__ ((__nonnull__ (3)));



extern int strfromf64 (char *__dest, size_t __size, const char * __format,
         _Float64 __f)
     throw () __attribute__ ((__nonnull__ (3)));
# 250 "/usr/include/stdlib.h" 3 4
extern int strfromf32x (char *__dest, size_t __size, const char * __format,
   _Float32x __f)
     throw () __attribute__ ((__nonnull__ (3)));



extern int strfromf64x (char *__dest, size_t __size, const char * __format,
   _Float64x __f)
     throw () __attribute__ ((__nonnull__ (3)));
# 272 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/bits/types/locale_t.h" 1 3 4
# 22 "/usr/include/bits/types/locale_t.h" 3 4
# 1 "/usr/include/bits/types/__locale_t.h" 1 3 4
# 28 "/usr/include/bits/types/__locale_t.h" 3 4
struct __locale_struct
{

  struct __locale_data *__locales[13];


  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;


  const char *__names[13];
};

typedef struct __locale_struct *__locale_t;
# 23 "/usr/include/bits/types/locale_t.h" 2 3 4

typedef __locale_t locale_t;
# 273 "/usr/include/stdlib.h" 2 3 4

extern long int strtol_l (const char *__restrict __nptr,
     char **__restrict __endptr, int __base,
     locale_t __loc) throw () __attribute__ ((__nonnull__ (1, 4)));

extern unsigned long int strtoul_l (const char *__restrict __nptr,
        char **__restrict __endptr,
        int __base, locale_t __loc)
     throw () __attribute__ ((__nonnull__ (1, 4)));

__extension__
extern long long int strtoll_l (const char *__restrict __nptr,
    char **__restrict __endptr, int __base,
    locale_t __loc)
     throw () __attribute__ ((__nonnull__ (1, 4)));

__extension__
extern unsigned long long int strtoull_l (const char *__restrict __nptr,
       char **__restrict __endptr,
       int __base, locale_t __loc)
     throw () __attribute__ ((__nonnull__ (1, 4)));

extern double strtod_l (const char *__restrict __nptr,
   char **__restrict __endptr, locale_t __loc)
     throw () __attribute__ ((__nonnull__ (1, 3)));

extern float strtof_l (const char *__restrict __nptr,
         char **__restrict __endptr, locale_t __loc)
     throw () __attribute__ ((__nonnull__ (1, 3)));

extern long double strtold_l (const char *__restrict __nptr,
         char **__restrict __endptr,
         locale_t __loc)
     throw () __attribute__ ((__nonnull__ (1, 3)));
# 316 "/usr/include/stdlib.h" 3 4
extern _Float32 strtof32_l (const char *__restrict __nptr,
       char **__restrict __endptr,
       locale_t __loc)
     throw () __attribute__ ((__nonnull__ (1, 3)));



extern _Float64 strtof64_l (const char *__restrict __nptr,
       char **__restrict __endptr,
       locale_t __loc)
     throw () __attribute__ ((__nonnull__ (1, 3)));
# 337 "/usr/include/stdlib.h" 3 4
extern _Float32x strtof32x_l (const char *__restrict __nptr,
         char **__restrict __endptr,
         locale_t __loc)
     throw () __attribute__ ((__nonnull__ (1, 3)));



extern _Float64x strtof64x_l (const char *__restrict __nptr,
         char **__restrict __endptr,
         locale_t __loc)
     throw () __attribute__ ((__nonnull__ (1, 3)));
# 385 "/usr/include/stdlib.h" 3 4
extern char *l64a (long int __n) throw () ;


extern long int a64l (const char *__s)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;




# 1 "/usr/include/sys/types.h" 1 3 4
# 27 "/usr/include/sys/types.h" 3 4
extern "C" {

# 1 "/usr/include/bits/types.h" 1 3 4
# 27 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 28 "/usr/include/bits/types.h" 2 3 4


typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;






typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;



typedef long int __quad_t;
typedef unsigned long int __u_quad_t;







typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
# 140 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/typesizes.h" 1 3 4
# 141 "/usr/include/bits/types.h" 2 3 4


typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;

typedef int __daddr_t;
typedef int __key_t;


typedef int __clockid_t;


typedef void * __timer_t;


typedef long int __blksize_t;




typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;


typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;


typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;


typedef long int __fsword_t;

typedef long int __ssize_t;


typedef long int __syscall_slong_t;

typedef unsigned long int __syscall_ulong_t;



typedef __off64_t __loff_t;
typedef char *__caddr_t;


typedef long int __intptr_t;


typedef unsigned int __socklen_t;




typedef int __sig_atomic_t;
# 30 "/usr/include/sys/types.h" 2 3 4



typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;


typedef __loff_t loff_t;




typedef __ino_t ino_t;






typedef __ino64_t ino64_t;




typedef __dev_t dev_t;




typedef __gid_t gid_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __uid_t uid_t;





typedef __off_t off_t;






typedef __off64_t off64_t;




typedef __pid_t pid_t;





typedef __id_t id_t;




typedef __ssize_t ssize_t;





typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;





typedef __key_t key_t;




# 1 "/usr/include/bits/types/clock_t.h" 1 3 4






typedef __clock_t clock_t;
# 127 "/usr/include/sys/types.h" 2 3 4

# 1 "/usr/include/bits/types/clockid_t.h" 1 3 4






typedef __clockid_t clockid_t;
# 129 "/usr/include/sys/types.h" 2 3 4
# 1 "/usr/include/bits/types/time_t.h" 1 3 4






typedef __time_t time_t;
# 130 "/usr/include/sys/types.h" 2 3 4
# 1 "/usr/include/bits/types/timer_t.h" 1 3 4






typedef __timer_t timer_t;
# 131 "/usr/include/sys/types.h" 2 3 4



typedef __useconds_t useconds_t;



typedef __suseconds_t suseconds_t;





# 1 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/stddef.h" 1 3 4
# 46 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 145 "/usr/include/sys/types.h" 2 3 4



typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;




# 1 "/usr/include/bits/stdint-intn.h" 1 3 4
# 24 "/usr/include/bits/stdint-intn.h" 3 4
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
# 156 "/usr/include/sys/types.h" 2 3 4
# 177 "/usr/include/sys/types.h" 3 4
typedef unsigned int u_int8_t __attribute__ ((__mode__ (__QI__)));
typedef unsigned int u_int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int u_int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int u_int64_t __attribute__ ((__mode__ (__DI__)));

typedef int register_t __attribute__ ((__mode__ (__word__)));
# 193 "/usr/include/sys/types.h" 3 4
# 1 "/usr/include/endian.h" 1 3 4
# 36 "/usr/include/endian.h" 3 4
# 1 "/usr/include/bits/endian.h" 1 3 4
# 37 "/usr/include/endian.h" 2 3 4
# 60 "/usr/include/endian.h" 3 4
# 1 "/usr/include/bits/byteswap.h" 1 3 4
# 33 "/usr/include/bits/byteswap.h" 3 4
static __inline __uint16_t
__bswap_16 (__uint16_t __bsx)
{



  return ((__uint16_t) ((((__bsx) >> 8) & 0xff) | (((__bsx) & 0xff) << 8)));

}






static __inline __uint32_t
__bswap_32 (__uint32_t __bsx)
{



  return ((((__bsx) & 0xff000000u) >> 24) | (((__bsx) & 0x00ff0000u) >> 8) | (((__bsx) & 0x0000ff00u) << 8) | (((__bsx) & 0x000000ffu) << 24));

}
# 69 "/usr/include/bits/byteswap.h" 3 4
__extension__ static __inline __uint64_t
__bswap_64 (__uint64_t __bsx)
{



  return ((((__bsx) & 0xff00000000000000ull) >> 56) | (((__bsx) & 0x00ff000000000000ull) >> 40) | (((__bsx) & 0x0000ff0000000000ull) >> 24) | (((__bsx) & 0x000000ff00000000ull) >> 8) | (((__bsx) & 0x00000000ff000000ull) << 8) | (((__bsx) & 0x0000000000ff0000ull) << 24) | (((__bsx) & 0x000000000000ff00ull) << 40) | (((__bsx) & 0x00000000000000ffull) << 56));

}
# 61 "/usr/include/endian.h" 2 3 4
# 1 "/usr/include/bits/uintn-identity.h" 1 3 4
# 32 "/usr/include/bits/uintn-identity.h" 3 4
static __inline __uint16_t
__uint16_identity (__uint16_t __x)
{
  return __x;
}

static __inline __uint32_t
__uint32_identity (__uint32_t __x)
{
  return __x;
}

static __inline __uint64_t
__uint64_identity (__uint64_t __x)
{
  return __x;
}
# 62 "/usr/include/endian.h" 2 3 4
# 194 "/usr/include/sys/types.h" 2 3 4


# 1 "/usr/include/sys/select.h" 1 3 4
# 30 "/usr/include/sys/select.h" 3 4
# 1 "/usr/include/bits/select.h" 1 3 4
# 22 "/usr/include/bits/select.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 23 "/usr/include/bits/select.h" 2 3 4
# 31 "/usr/include/sys/select.h" 2 3 4


# 1 "/usr/include/bits/types/sigset_t.h" 1 3 4



# 1 "/usr/include/bits/types/__sigset_t.h" 1 3 4




typedef struct
{
  unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
} __sigset_t;
# 5 "/usr/include/bits/types/sigset_t.h" 2 3 4


typedef __sigset_t sigset_t;
# 34 "/usr/include/sys/select.h" 2 3 4



# 1 "/usr/include/bits/types/struct_timeval.h" 1 3 4







struct timeval
{
  __time_t tv_sec;
  __suseconds_t tv_usec;
};
# 38 "/usr/include/sys/select.h" 2 3 4

# 1 "/usr/include/bits/types/struct_timespec.h" 1 3 4








struct timespec
{
  __time_t tv_sec;
  __syscall_slong_t tv_nsec;
};
# 40 "/usr/include/sys/select.h" 2 3 4
# 49 "/usr/include/sys/select.h" 3 4
typedef long int __fd_mask;
# 59 "/usr/include/sys/select.h" 3 4
typedef struct
  {



    __fd_mask fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];





  } fd_set;






typedef __fd_mask fd_mask;
# 91 "/usr/include/sys/select.h" 3 4
extern "C" {
# 101 "/usr/include/sys/select.h" 3 4
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);
# 113 "/usr/include/sys/select.h" 3 4
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);
# 126 "/usr/include/sys/select.h" 3 4
}
# 197 "/usr/include/sys/types.h" 2 3 4





typedef __blksize_t blksize_t;






typedef __blkcnt_t blkcnt_t;



typedef __fsblkcnt_t fsblkcnt_t;



typedef __fsfilcnt_t fsfilcnt_t;
# 236 "/usr/include/sys/types.h" 3 4
typedef __blkcnt64_t blkcnt64_t;
typedef __fsblkcnt64_t fsblkcnt64_t;
typedef __fsfilcnt64_t fsfilcnt64_t;





# 1 "/usr/include/bits/pthreadtypes.h" 1 3 4
# 23 "/usr/include/bits/pthreadtypes.h" 3 4
# 1 "/usr/include/bits/thread-shared-types.h" 1 3 4
# 77 "/usr/include/bits/thread-shared-types.h" 3 4
# 1 "/usr/include/bits/pthreadtypes-arch.h" 1 3 4
# 21 "/usr/include/bits/pthreadtypes-arch.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 22 "/usr/include/bits/pthreadtypes-arch.h" 2 3 4
# 65 "/usr/include/bits/pthreadtypes-arch.h" 3 4
struct __pthread_rwlock_arch_t
{
  unsigned int __readers;
  unsigned int __writers;
  unsigned int __wrphase_futex;
  unsigned int __writers_futex;
  unsigned int __pad3;
  unsigned int __pad4;

  int __cur_writer;
  int __shared;
  signed char __rwelision;




  unsigned char __pad1[7];


  unsigned long int __pad2;


  unsigned int __flags;
# 99 "/usr/include/bits/pthreadtypes-arch.h" 3 4
};
# 78 "/usr/include/bits/thread-shared-types.h" 2 3 4




typedef struct __pthread_internal_list
{
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;
# 118 "/usr/include/bits/thread-shared-types.h" 3 4
struct __pthread_mutex_s
{
  int __lock ;
  unsigned int __count;
  int __owner;

  unsigned int __nusers;
# 148 "/usr/include/bits/thread-shared-types.h" 3 4
  int __kind;





  short __spins; short __elision;
  __pthread_list_t __list;
# 166 "/usr/include/bits/thread-shared-types.h" 3 4
};




struct __pthread_cond_s
{
  __extension__ union
  {
    __extension__ unsigned long long int __wseq;
    struct
    {
      unsigned int __low;
      unsigned int __high;
    } __wseq32;
  };
  __extension__ union
  {
    __extension__ unsigned long long int __g1_start;
    struct
    {
      unsigned int __low;
      unsigned int __high;
    } __g1_start32;
  };
  unsigned int __g_refs[2] ;
  unsigned int __g_size[2];
  unsigned int __g1_orig_size;
  unsigned int __wrefs;
  unsigned int __g_signals[2];
};
# 24 "/usr/include/bits/pthreadtypes.h" 2 3 4



typedef unsigned long int pthread_t;




typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;




typedef union
{
  char __size[4];
  int __align;
} pthread_condattr_t;



typedef unsigned int pthread_key_t;



typedef int pthread_once_t;


union pthread_attr_t
{
  char __size[56];
  long int __align;
};

typedef union pthread_attr_t pthread_attr_t;




typedef union
{
  struct __pthread_mutex_s __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;


typedef union
{
  struct __pthread_cond_s __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;





typedef union
{
  struct __pthread_rwlock_arch_t __data;
  char __size[56];
  long int __align;
} pthread_rwlock_t;

typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;





typedef volatile int pthread_spinlock_t;




typedef union
{
  char __size[32];
  long int __align;
} pthread_barrier_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;
# 245 "/usr/include/sys/types.h" 2 3 4


}
# 395 "/usr/include/stdlib.h" 2 3 4






extern long int random (void) throw ();


extern void srandom (unsigned int __seed) throw ();





extern char *initstate (unsigned int __seed, char *__statebuf,
   size_t __statelen) throw () __attribute__ ((__nonnull__ (2)));



extern char *setstate (char *__statebuf) throw () __attribute__ ((__nonnull__ (1)));







struct random_data
  {
    int32_t *fptr;
    int32_t *rptr;
    int32_t *state;
    int rand_type;
    int rand_deg;
    int rand_sep;
    int32_t *end_ptr;
  };

extern int random_r (struct random_data *__restrict __buf,
       int32_t *__restrict __result) throw () __attribute__ ((__nonnull__ (1, 2)));

extern int srandom_r (unsigned int __seed, struct random_data *__buf)
     throw () __attribute__ ((__nonnull__ (2)));

extern int initstate_r (unsigned int __seed, char *__restrict __statebuf,
   size_t __statelen,
   struct random_data *__restrict __buf)
     throw () __attribute__ ((__nonnull__ (2, 4)));

extern int setstate_r (char *__restrict __statebuf,
         struct random_data *__restrict __buf)
     throw () __attribute__ ((__nonnull__ (1, 2)));





extern int rand (void) throw ();

extern void srand (unsigned int __seed) throw ();



extern int rand_r (unsigned int *__seed) throw ();







extern double drand48 (void) throw ();
extern double erand48 (unsigned short int __xsubi[3]) throw () __attribute__ ((__nonnull__ (1)));


extern long int lrand48 (void) throw ();
extern long int nrand48 (unsigned short int __xsubi[3])
     throw () __attribute__ ((__nonnull__ (1)));


extern long int mrand48 (void) throw ();
extern long int jrand48 (unsigned short int __xsubi[3])
     throw () __attribute__ ((__nonnull__ (1)));


extern void srand48 (long int __seedval) throw ();
extern unsigned short int *seed48 (unsigned short int __seed16v[3])
     throw () __attribute__ ((__nonnull__ (1)));
extern void lcong48 (unsigned short int __param[7]) throw () __attribute__ ((__nonnull__ (1)));





struct drand48_data
  {
    unsigned short int __x[3];
    unsigned short int __old_x[3];
    unsigned short int __c;
    unsigned short int __init;
    __extension__ unsigned long long int __a;

  };


extern int drand48_r (struct drand48_data *__restrict __buffer,
        double *__restrict __result) throw () __attribute__ ((__nonnull__ (1, 2)));
extern int erand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        double *__restrict __result) throw () __attribute__ ((__nonnull__ (1, 2)));


extern int lrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     throw () __attribute__ ((__nonnull__ (1, 2)));
extern int nrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     throw () __attribute__ ((__nonnull__ (1, 2)));


extern int mrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     throw () __attribute__ ((__nonnull__ (1, 2)));
extern int jrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     throw () __attribute__ ((__nonnull__ (1, 2)));


extern int srand48_r (long int __seedval, struct drand48_data *__buffer)
     throw () __attribute__ ((__nonnull__ (2)));

extern int seed48_r (unsigned short int __seed16v[3],
       struct drand48_data *__buffer) throw () __attribute__ ((__nonnull__ (1, 2)));

extern int lcong48_r (unsigned short int __param[7],
        struct drand48_data *__buffer)
     throw () __attribute__ ((__nonnull__ (1, 2)));




extern void *malloc (size_t __size) throw () __attribute__ ((__malloc__)) ;

extern void *calloc (size_t __nmemb, size_t __size)
     throw () __attribute__ ((__malloc__)) ;






extern void *realloc (void *__ptr, size_t __size)
     throw () __attribute__ ((__warn_unused_result__));







extern void *reallocarray (void *__ptr, size_t __nmemb, size_t __size)
     throw () __attribute__ ((__warn_unused_result__));



extern void free (void *__ptr) throw ();


# 1 "/usr/include/alloca.h" 1 3 4
# 24 "/usr/include/alloca.h" 3 4
# 1 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/stddef.h" 1 3 4
# 46 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 25 "/usr/include/alloca.h" 2 3 4

extern "C" {





extern void *alloca (size_t __size) throw ();





}
# 567 "/usr/include/stdlib.h" 2 3 4





extern void *valloc (size_t __size) throw () __attribute__ ((__malloc__)) ;




extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
     throw () __attribute__ ((__nonnull__ (1))) ;




extern void *aligned_alloc (size_t __alignment, size_t __size)
     throw () __attribute__ ((__malloc__)) ;



extern void abort (void) throw () __attribute__ ((__noreturn__));



extern int atexit (void (*__func) (void)) throw () __attribute__ ((__nonnull__ (1)));




extern "C++" int at_quick_exit (void (*__func) (void))
     throw () __asm ("at_quick_exit") __attribute__ ((__nonnull__ (1)));
# 607 "/usr/include/stdlib.h" 3 4
extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg)
     throw () __attribute__ ((__nonnull__ (1)));





extern void exit (int __status) throw () __attribute__ ((__noreturn__));





extern void quick_exit (int __status) throw () __attribute__ ((__noreturn__));





extern void _Exit (int __status) throw () __attribute__ ((__noreturn__));




extern char *getenv (const char *__name) throw () __attribute__ ((__nonnull__ (1))) ;




extern char *secure_getenv (const char *__name)
     throw () __attribute__ ((__nonnull__ (1))) ;






extern int putenv (char *__string) throw () __attribute__ ((__nonnull__ (1)));





extern int setenv (const char *__name, const char *__value, int __replace)
     throw () __attribute__ ((__nonnull__ (2)));


extern int unsetenv (const char *__name) throw () __attribute__ ((__nonnull__ (1)));






extern int clearenv (void) throw ();
# 672 "/usr/include/stdlib.h" 3 4
extern char *mktemp (char *__template) throw () __attribute__ ((__nonnull__ (1)));
# 685 "/usr/include/stdlib.h" 3 4
extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1))) ;
# 695 "/usr/include/stdlib.h" 3 4
extern int mkstemp64 (char *__template) __attribute__ ((__nonnull__ (1))) ;
# 707 "/usr/include/stdlib.h" 3 4
extern int mkstemps (char *__template, int __suffixlen) __attribute__ ((__nonnull__ (1))) ;
# 717 "/usr/include/stdlib.h" 3 4
extern int mkstemps64 (char *__template, int __suffixlen)
     __attribute__ ((__nonnull__ (1))) ;
# 728 "/usr/include/stdlib.h" 3 4
extern char *mkdtemp (char *__template) throw () __attribute__ ((__nonnull__ (1))) ;
# 739 "/usr/include/stdlib.h" 3 4
extern int mkostemp (char *__template, int __flags) __attribute__ ((__nonnull__ (1))) ;
# 749 "/usr/include/stdlib.h" 3 4
extern int mkostemp64 (char *__template, int __flags) __attribute__ ((__nonnull__ (1))) ;
# 759 "/usr/include/stdlib.h" 3 4
extern int mkostemps (char *__template, int __suffixlen, int __flags)
     __attribute__ ((__nonnull__ (1))) ;
# 771 "/usr/include/stdlib.h" 3 4
extern int mkostemps64 (char *__template, int __suffixlen, int __flags)
     __attribute__ ((__nonnull__ (1))) ;
# 781 "/usr/include/stdlib.h" 3 4
extern int system (const char *__command) ;





extern char *canonicalize_file_name (const char *__name)
     throw () __attribute__ ((__nonnull__ (1))) ;
# 797 "/usr/include/stdlib.h" 3 4
extern char *realpath (const char *__restrict __name,
         char *__restrict __resolved) throw () ;






typedef int (*__compar_fn_t) (const void *, const void *);


typedef __compar_fn_t comparison_fn_t;



typedef int (*__compar_d_fn_t) (const void *, const void *, void *);




extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) ;







extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));

extern void qsort_r (void *__base, size_t __nmemb, size_t __size,
       __compar_d_fn_t __compar, void *__arg)
  __attribute__ ((__nonnull__ (1, 4)));




extern int abs (int __x) throw () __attribute__ ((__const__)) ;
extern long int labs (long int __x) throw () __attribute__ ((__const__)) ;


__extension__ extern long long int llabs (long long int __x)
     throw () __attribute__ ((__const__)) ;






extern div_t div (int __numer, int __denom)
     throw () __attribute__ ((__const__)) ;
extern ldiv_t ldiv (long int __numer, long int __denom)
     throw () __attribute__ ((__const__)) ;


__extension__ extern lldiv_t lldiv (long long int __numer,
        long long int __denom)
     throw () __attribute__ ((__const__)) ;
# 869 "/usr/include/stdlib.h" 3 4
extern char *ecvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) throw () __attribute__ ((__nonnull__ (3, 4))) ;




extern char *fcvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) throw () __attribute__ ((__nonnull__ (3, 4))) ;




extern char *gcvt (double __value, int __ndigit, char *__buf)
     throw () __attribute__ ((__nonnull__ (3))) ;




extern char *qecvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     throw () __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qfcvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     throw () __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qgcvt (long double __value, int __ndigit, char *__buf)
     throw () __attribute__ ((__nonnull__ (3))) ;




extern int ecvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) throw () __attribute__ ((__nonnull__ (3, 4, 5)));
extern int fcvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) throw () __attribute__ ((__nonnull__ (3, 4, 5)));

extern int qecvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     throw () __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qfcvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     throw () __attribute__ ((__nonnull__ (3, 4, 5)));





extern int mblen (const char *__s, size_t __n) throw ();


extern int mbtowc (wchar_t *__restrict __pwc,
     const char *__restrict __s, size_t __n) throw ();


extern int wctomb (char *__s, wchar_t __wchar) throw ();



extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   const char *__restrict __s, size_t __n) throw ();

extern size_t wcstombs (char *__restrict __s,
   const wchar_t *__restrict __pwcs, size_t __n)
     throw ();







extern int rpmatch (const char *__response) throw () __attribute__ ((__nonnull__ (1))) ;
# 954 "/usr/include/stdlib.h" 3 4
extern int getsubopt (char **__restrict __optionp,
        char *const *__restrict __tokens,
        char **__restrict __valuep)
     throw () __attribute__ ((__nonnull__ (1, 2, 3))) ;







extern int posix_openpt (int __oflag) ;







extern int grantpt (int __fd) throw ();



extern int unlockpt (int __fd) throw ();




extern char *ptsname (int __fd) throw () ;






extern int ptsname_r (int __fd, char *__buf, size_t __buflen)
     throw () __attribute__ ((__nonnull__ (2)));


extern int getpt (void);






extern int getloadavg (double __loadavg[], int __nelem)
     throw () __attribute__ ((__nonnull__ (1)));
# 1010 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/bits/stdlib-float.h" 1 3 4
# 1011 "/usr/include/stdlib.h" 2 3 4
# 1020 "/usr/include/stdlib.h" 3 4
}
# 2 "../contrib/jemalloc-cmake/include/jemalloc/jemalloc_macros.h" 2 3
# 1 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/stdbool.h" 1 3
# 3 "../contrib/jemalloc-cmake/include/jemalloc/jemalloc_macros.h" 2 3
# 1 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/stdint.h" 1 3
# 52 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/stdint.h" 3
# 1 "/usr/include/stdint.h" 1 3 4
# 26 "/usr/include/stdint.h" 3 4
# 1 "/usr/include/bits/libc-header-start.h" 1 3 4
# 27 "/usr/include/stdint.h" 2 3 4

# 1 "/usr/include/bits/wchar.h" 1 3 4
# 29 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 30 "/usr/include/stdint.h" 2 3 4







# 1 "/usr/include/bits/stdint-uintn.h" 1 3 4
# 24 "/usr/include/bits/stdint-uintn.h" 3 4
typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
# 38 "/usr/include/stdint.h" 2 3 4





typedef __int_least8_t int_least8_t;
typedef __int_least16_t int_least16_t;
typedef __int_least32_t int_least32_t;
typedef __int_least64_t int_least64_t;


typedef __uint_least8_t uint_least8_t;
typedef __uint_least16_t uint_least16_t;
typedef __uint_least32_t uint_least32_t;
typedef __uint_least64_t uint_least64_t;





typedef signed char int_fast8_t;

typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
# 71 "/usr/include/stdint.h" 3 4
typedef unsigned char uint_fast8_t;

typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
# 87 "/usr/include/stdint.h" 3 4
typedef long int intptr_t;


typedef unsigned long int uintptr_t;
# 101 "/usr/include/stdint.h" 3 4
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
# 53 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/stdint.h" 2 3
# 4 "../contrib/jemalloc-cmake/include/jemalloc/jemalloc_macros.h" 2 3
# 1 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/limits.h" 1 3
# 21 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/limits.h" 3
# 1 "/usr/include/limits.h" 1 3 4
# 26 "/usr/include/limits.h" 3 4
# 1 "/usr/include/bits/libc-header-start.h" 1 3 4
# 27 "/usr/include/limits.h" 2 3 4
# 183 "/usr/include/limits.h" 3 4
# 1 "/usr/include/bits/posix1_lim.h" 1 3 4
# 27 "/usr/include/bits/posix1_lim.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 28 "/usr/include/bits/posix1_lim.h" 2 3 4
# 161 "/usr/include/bits/posix1_lim.h" 3 4
# 1 "/usr/include/bits/local_lim.h" 1 3 4
# 38 "/usr/include/bits/local_lim.h" 3 4
# 1 "/usr/include/linux/limits.h" 1 3 4
# 39 "/usr/include/bits/local_lim.h" 2 3 4
# 162 "/usr/include/bits/posix1_lim.h" 2 3 4
# 184 "/usr/include/limits.h" 2 3 4



# 1 "/usr/include/bits/posix2_lim.h" 1 3 4
# 188 "/usr/include/limits.h" 2 3 4



# 1 "/usr/include/bits/xopen_lim.h" 1 3 4
# 64 "/usr/include/bits/xopen_lim.h" 3 4
# 1 "/usr/include/bits/uio_lim.h" 1 3 4
# 65 "/usr/include/bits/xopen_lim.h" 2 3 4
# 192 "/usr/include/limits.h" 2 3 4
# 22 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/limits.h" 2 3
# 5 "../contrib/jemalloc-cmake/include/jemalloc/jemalloc_macros.h" 2 3
# 1 "/usr/include/strings.h" 1 3 4
# 23 "/usr/include/strings.h" 3 4
# 1 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/stddef.h" 1 3 4
# 46 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 24 "/usr/include/strings.h" 2 3 4






extern "C" {



extern int bcmp (const void *__s1, const void *__s2, size_t __n)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern void bcopy (const void *__src, void *__dest, size_t __n)
  throw () __attribute__ ((__nonnull__ (1, 2)));


extern void bzero (void *__s, size_t __n) throw () __attribute__ ((__nonnull__ (1)));
# 68 "/usr/include/strings.h" 3 4
extern char *index (const char *__s, int __c)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 96 "/usr/include/strings.h" 3 4
extern char *rindex (const char *__s, int __c)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));






extern int ffs (int __i) throw () __attribute__ ((__const__));





extern int ffsl (long int __l) throw () __attribute__ ((__const__));
__extension__ extern int ffsll (long long int __ll)
     throw () __attribute__ ((__const__));



extern int strcasecmp (const char *__s1, const char *__s2)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strncasecmp (const char *__s1, const char *__s2, size_t __n)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));






extern int strcasecmp_l (const char *__s1, const char *__s2, locale_t __loc)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));



extern int strncasecmp_l (const char *__s1, const char *__s2,
     size_t __n, locale_t __loc)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 4)));


}
# 6 "../contrib/jemalloc-cmake/include/jemalloc/jemalloc_macros.h" 2 3
# 15 "../contrib/jemalloc-cmake/include/jemalloc/jemalloc.h" 2 3
# 1 "../contrib/jemalloc-cmake/include/jemalloc/jemalloc_protos.h" 1 3
# 19 "../contrib/jemalloc-cmake/include/jemalloc/jemalloc_protos.h" 3
extern __attribute__((visibility("default"))) const char *malloc_conf;
extern __attribute__((visibility("default"))) void (*malloc_message)(void *cbopaque,
    const char *s);

__attribute__((visibility("default")))
    void __attribute__((nothrow)) *malloc(size_t size)
    throw() __attribute__((malloc)) __attribute__((alloc_size(1)));
__attribute__((visibility("default")))
    void __attribute__((nothrow)) *calloc(size_t num, size_t size)
    throw() __attribute__((malloc)) __attribute__((alloc_size(1, 2)));
__attribute__((visibility("default"))) int __attribute__((nothrow)) posix_memalign(
    void **memptr, size_t alignment, size_t size) throw()
    __attribute__((nonnull(1)));
__attribute__((visibility("default")))
    void __attribute__((nothrow)) *aligned_alloc(size_t alignment,
    size_t size) throw() __attribute__((malloc))
    __attribute__((alloc_size(2)));
__attribute__((visibility("default")))
    void __attribute__((nothrow)) *realloc(void *ptr, size_t size)
    throw() __attribute__((alloc_size(2)));
__attribute__((visibility("default"))) void __attribute__((nothrow)) free(void *ptr)
    throw();

__attribute__((visibility("default")))
    void __attribute__((nothrow)) *mallocx(size_t size, int flags)
    __attribute__((malloc)) __attribute__((alloc_size(1)));
__attribute__((visibility("default")))
    void __attribute__((nothrow)) *rallocx(void *ptr, size_t size,
    int flags) __attribute__((alloc_size(2)));
__attribute__((visibility("default"))) size_t __attribute__((nothrow)) xallocx(void *ptr, size_t size,
    size_t extra, int flags);
__attribute__((visibility("default"))) size_t __attribute__((nothrow)) sallocx(const void *ptr,
    int flags) __attribute__((pure));
__attribute__((visibility("default"))) void __attribute__((nothrow)) dallocx(void *ptr, int flags);
__attribute__((visibility("default"))) void __attribute__((nothrow)) sdallocx(void *ptr, size_t size,
    int flags);
__attribute__((visibility("default"))) size_t __attribute__((nothrow)) nallocx(size_t size, int flags)
    __attribute__((pure));

__attribute__((visibility("default"))) int __attribute__((nothrow)) mallctl(const char *name,
    void *oldp, size_t *oldlenp, void *newp, size_t newlen);
__attribute__((visibility("default"))) int __attribute__((nothrow)) mallctlnametomib(const char *name,
    size_t *mibp, size_t *miblenp);
__attribute__((visibility("default"))) int __attribute__((nothrow)) mallctlbymib(const size_t *mib,
    size_t miblen, void *oldp, size_t *oldlenp, void *newp, size_t newlen);
__attribute__((visibility("default"))) void __attribute__((nothrow)) malloc_stats_print(
    void (*write_cb)(void *, const char *), void *je_cbopaque,
    const char *opts);
__attribute__((visibility("default"))) size_t __attribute__((nothrow)) malloc_usable_size(
                               void *ptr) throw();






__attribute__((visibility("default")))
    void __attribute__((nothrow)) *memalign(size_t alignment, size_t size)
    throw() __attribute__((malloc));



__attribute__((visibility("default")))
    void __attribute__((nothrow)) *valloc(size_t size) throw()
    __attribute__((malloc));



__attribute__((visibility("default")))
    void __attribute__((nothrow)) *je_pvalloc(size_t size) throw()
    __attribute__((malloc));
# 16 "../contrib/jemalloc-cmake/include/jemalloc/jemalloc.h" 2 3
# 1 "../contrib/jemalloc-cmake/include/jemalloc/jemalloc_typedefs.h" 1 3
typedef struct extent_hooks_s extent_hooks_t;






typedef void *(extent_alloc_t)(extent_hooks_t *, void *, size_t, size_t, bool *,
    bool *, unsigned);






typedef bool (extent_dalloc_t)(extent_hooks_t *, void *, size_t, bool,
    unsigned);






typedef void (extent_destroy_t)(extent_hooks_t *, void *, size_t, bool,
    unsigned);






typedef bool (extent_commit_t)(extent_hooks_t *, void *, size_t, size_t, size_t,
    unsigned);






typedef bool (extent_decommit_t)(extent_hooks_t *, void *, size_t, size_t,
    size_t, unsigned);






typedef bool (extent_purge_t)(extent_hooks_t *, void *, size_t, size_t, size_t,
    unsigned);






typedef bool (extent_split_t)(extent_hooks_t *, void *, size_t, size_t, size_t,
    bool, unsigned);






typedef bool (extent_merge_t)(extent_hooks_t *, void *, size_t, void *, size_t,
    bool, unsigned);

struct extent_hooks_s {
 extent_alloc_t *alloc;
 extent_dalloc_t *dalloc;
 extent_destroy_t *destroy;
 extent_commit_t *commit;
 extent_decommit_t *decommit;
 extent_purge_t *purge_lazy;
 extent_purge_t *purge_forced;
 extent_split_t *split;
 extent_merge_t *merge;
};
# 17 "../contrib/jemalloc-cmake/include/jemalloc/jemalloc.h" 2 3






}
# 2 "test_main.cc" 2
# 1 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 1 3
# 17 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
# 1 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 1 3
# 17 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
# 1 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 1 3
# 17 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
typedef long long __m64 __attribute__((__vector_size__(8), __aligned__(8)));

typedef long long __v1di __attribute__((__vector_size__(8)));
typedef int __v2si __attribute__((__vector_size__(8)));
typedef short __v4hi __attribute__((__vector_size__(8)));
typedef char __v8qi __attribute__((__vector_size__(8)));
# 34 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("mmx")))
_mm_empty(void)
{
    __builtin_ia32_emms();
}
# 51 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_cvtsi32_si64(int __i)
{
    return (__m64)__builtin_ia32_vec_init_v2si(__i, 0);
}
# 68 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_cvtsi64_si32(__m64 __m)
{
    return __builtin_ia32_vec_ext_v2si((__v2si)__m, 0);
}
# 84 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_cvtsi64_m64(long long __i)
{
    return (__m64)__i;
}
# 100 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ long long __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_cvtm64_si64(__m64 __m)
{
    return (long long)__m;
}
# 130 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_packs_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_packsswb((__v4hi)__m1, (__v4hi)__m2);
}
# 160 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_packs_pi32(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_packssdw((__v2si)__m1, (__v2si)__m2);
}
# 190 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_packs_pu16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_packuswb((__v4hi)__m1, (__v4hi)__m2);
}
# 217 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_unpackhi_pi8(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_punpckhbw((__v8qi)__m1, (__v8qi)__m2);
}
# 240 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_unpackhi_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_punpckhwd((__v4hi)__m1, (__v4hi)__m2);
}
# 261 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_unpackhi_pi32(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_punpckhdq((__v2si)__m1, (__v2si)__m2);
}
# 288 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_unpacklo_pi8(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_punpcklbw((__v8qi)__m1, (__v8qi)__m2);
}
# 311 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_unpacklo_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_punpcklwd((__v4hi)__m1, (__v4hi)__m2);
}
# 332 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_unpacklo_pi32(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_punpckldq((__v2si)__m1, (__v2si)__m2);
}
# 353 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_add_pi8(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_paddb((__v8qi)__m1, (__v8qi)__m2);
}
# 374 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_add_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_paddw((__v4hi)__m1, (__v4hi)__m2);
}
# 395 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_add_pi32(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_paddd((__v2si)__m1, (__v2si)__m2);
}
# 417 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_adds_pi8(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_paddsb((__v8qi)__m1, (__v8qi)__m2);
}
# 440 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_adds_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_paddsw((__v4hi)__m1, (__v4hi)__m2);
}
# 462 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_adds_pu8(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_paddusb((__v8qi)__m1, (__v8qi)__m2);
}
# 484 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_adds_pu16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_paddusw((__v4hi)__m1, (__v4hi)__m2);
}
# 505 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_sub_pi8(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_psubb((__v8qi)__m1, (__v8qi)__m2);
}
# 526 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_sub_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_psubw((__v4hi)__m1, (__v4hi)__m2);
}
# 547 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_sub_pi32(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_psubd((__v2si)__m1, (__v2si)__m2);
}
# 570 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_subs_pi8(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_psubsb((__v8qi)__m1, (__v8qi)__m2);
}
# 593 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_subs_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_psubsw((__v4hi)__m1, (__v4hi)__m2);
}
# 617 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_subs_pu8(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_psubusb((__v8qi)__m1, (__v8qi)__m2);
}
# 641 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_subs_pu16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_psubusw((__v4hi)__m1, (__v4hi)__m2);
}
# 668 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_madd_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_pmaddwd((__v4hi)__m1, (__v4hi)__m2);
}
# 689 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_mulhi_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_pmulhw((__v4hi)__m1, (__v4hi)__m2);
}
# 710 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_mullo_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_pmullw((__v4hi)__m1, (__v4hi)__m2);
}
# 733 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_sll_pi16(__m64 __m, __m64 __count)
{
    return (__m64)__builtin_ia32_psllw((__v4hi)__m, __count);
}
# 755 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_slli_pi16(__m64 __m, int __count)
{
    return (__m64)__builtin_ia32_psllwi((__v4hi)__m, __count);
}
# 778 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_sll_pi32(__m64 __m, __m64 __count)
{
    return (__m64)__builtin_ia32_pslld((__v2si)__m, __count);
}
# 800 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_slli_pi32(__m64 __m, int __count)
{
    return (__m64)__builtin_ia32_pslldi((__v2si)__m, __count);
}
# 820 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_sll_si64(__m64 __m, __m64 __count)
{
    return (__m64)__builtin_ia32_psllq((__v1di)__m, __count);
}
# 840 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_slli_si64(__m64 __m, int __count)
{
    return (__m64)__builtin_ia32_psllqi((__v1di)__m, __count);
}
# 864 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_sra_pi16(__m64 __m, __m64 __count)
{
    return (__m64)__builtin_ia32_psraw((__v4hi)__m, __count);
}
# 887 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_srai_pi16(__m64 __m, int __count)
{
    return (__m64)__builtin_ia32_psrawi((__v4hi)__m, __count);
}
# 911 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_sra_pi32(__m64 __m, __m64 __count)
{
    return (__m64)__builtin_ia32_psrad((__v2si)__m, __count);
}
# 934 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_srai_pi32(__m64 __m, int __count)
{
    return (__m64)__builtin_ia32_psradi((__v2si)__m, __count);
}
# 957 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_srl_pi16(__m64 __m, __m64 __count)
{
    return (__m64)__builtin_ia32_psrlw((__v4hi)__m, __count);
}
# 979 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_srli_pi16(__m64 __m, int __count)
{
    return (__m64)__builtin_ia32_psrlwi((__v4hi)__m, __count);
}
# 1002 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_srl_pi32(__m64 __m, __m64 __count)
{
    return (__m64)__builtin_ia32_psrld((__v2si)__m, __count);
}
# 1024 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_srli_pi32(__m64 __m, int __count)
{
    return (__m64)__builtin_ia32_psrldi((__v2si)__m, __count);
}
# 1044 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_srl_si64(__m64 __m, __m64 __count)
{
    return (__m64)__builtin_ia32_psrlq((__v1di)__m, __count);
}
# 1065 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_srli_si64(__m64 __m, int __count)
{
    return (__m64)__builtin_ia32_psrlqi((__v1di)__m, __count);
}
# 1083 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_and_si64(__m64 __m1, __m64 __m2)
{
    return __builtin_ia32_pand((__v1di)__m1, (__v1di)__m2);
}
# 1104 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_andnot_si64(__m64 __m1, __m64 __m2)
{
    return __builtin_ia32_pandn((__v1di)__m1, (__v1di)__m2);
}
# 1122 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_or_si64(__m64 __m1, __m64 __m2)
{
    return __builtin_ia32_por((__v1di)__m1, (__v1di)__m2);
}
# 1140 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_xor_si64(__m64 __m1, __m64 __m2)
{
    return __builtin_ia32_pxor((__v1di)__m1, (__v1di)__m2);
}
# 1162 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_cmpeq_pi8(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_pcmpeqb((__v8qi)__m1, (__v8qi)__m2);
}
# 1184 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_cmpeq_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_pcmpeqw((__v4hi)__m1, (__v4hi)__m2);
}
# 1206 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_cmpeq_pi32(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_pcmpeqd((__v2si)__m1, (__v2si)__m2);
}
# 1228 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_cmpgt_pi8(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_pcmpgtb((__v8qi)__m1, (__v8qi)__m2);
}
# 1250 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_cmpgt_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_pcmpgtw((__v4hi)__m1, (__v4hi)__m2);
}
# 1272 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_cmpgt_pi32(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_ia32_pcmpgtd((__v2si)__m1, (__v2si)__m2);
}
# 1285 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_setzero_si64(void)
{
    return __extension__ (__m64){ 0LL };
}
# 1306 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_set_pi32(int __i1, int __i0)
{
    return (__m64)__builtin_ia32_vec_init_v2si(__i0, __i1);
}
# 1329 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_set_pi16(short __s3, short __s2, short __s1, short __s0)
{
    return (__m64)__builtin_ia32_vec_init_v4hi(__s0, __s1, __s2, __s3);
}
# 1360 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_set_pi8(char __b7, char __b6, char __b5, char __b4, char __b3, char __b2,
            char __b1, char __b0)
{
    return (__m64)__builtin_ia32_vec_init_v8qi(__b0, __b1, __b2, __b3,
                                               __b4, __b5, __b6, __b7);
}
# 1381 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_set1_pi32(int __i)
{
    return _mm_set_pi32(__i, __i);
}
# 1400 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_set1_pi16(short __w)
{
    return _mm_set_pi16(__w, __w, __w, __w);
}
# 1418 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_set1_pi8(char __b)
{
    return _mm_set_pi8(__b, __b, __b, __b, __b, __b, __b, __b);
}
# 1439 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_setr_pi32(int __i0, int __i1)
{
    return _mm_set_pi32(__i1, __i0);
}
# 1462 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_setr_pi16(short __w0, short __w1, short __w2, short __w3)
{
    return _mm_set_pi16(__w3, __w2, __w1, __w0);
}
# 1493 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx"), __min_vector_width__(64)))
_mm_setr_pi8(char __b0, char __b1, char __b2, char __b3, char __b4, char __b5,
             char __b6, char __b7)
{
    return _mm_set_pi8(__b7, __b6, __b5, __b4, __b3, __b2, __b1, __b0);
}
# 18 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 2 3

typedef int __v4si __attribute__((__vector_size__(16)));
typedef float __v4sf __attribute__((__vector_size__(16)));
typedef float __m128 __attribute__((__vector_size__(16), __aligned__(16)));

typedef float __m128_u __attribute__((__vector_size__(16), __aligned__(1)));


typedef unsigned int __v4su __attribute__((__vector_size__(16)));




# 1 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mm_malloc.h" 1 3
# 25 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mm_malloc.h" 3
extern "C" int posix_memalign(void **__memptr, size_t __alignment, size_t __size);




static __inline__ void *__attribute__((__always_inline__, __nodebug__,
                                       __malloc__, __alloc_size__(1),
                                       __alloc_align__(2)))
_mm_malloc(size_t __size, size_t __align) {
  if (__align == 1) {
    return malloc(__size);
  }

  if (!(__align & (__align - 1)) && __align < sizeof(void *))
    __align = sizeof(void *);

  void *__mallocedMemory;





  if (posix_memalign(&__mallocedMemory, __align, __size))
    return 0;


  return __mallocedMemory;
}

static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_free(void *__p)
{





  free(__p);

}
# 32 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 2 3
# 53 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_add_ss(__m128 __a, __m128 __b)
{
  __a[0] += __b[0];
  return __a;
}
# 73 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_add_ps(__m128 __a, __m128 __b)
{
  return (__m128)((__v4sf)__a + (__v4sf)__b);
}
# 95 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_sub_ss(__m128 __a, __m128 __b)
{
  __a[0] -= __b[0];
  return __a;
}
# 116 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_sub_ps(__m128 __a, __m128 __b)
{
  return (__m128)((__v4sf)__a - (__v4sf)__b);
}
# 138 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_mul_ss(__m128 __a, __m128 __b)
{
  __a[0] *= __b[0];
  return __a;
}
# 158 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_mul_ps(__m128 __a, __m128 __b)
{
  return (__m128)((__v4sf)__a * (__v4sf)__b);
}
# 180 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_div_ss(__m128 __a, __m128 __b)
{
  __a[0] /= __b[0];
  return __a;
}
# 199 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_div_ps(__m128 __a, __m128 __b)
{
  return (__m128)((__v4sf)__a / (__v4sf)__b);
}
# 217 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_sqrt_ss(__m128 __a)
{
  return (__m128)__builtin_ia32_sqrtss((__v4sf)__a);
}
# 234 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_sqrt_ps(__m128 __a)
{
  return __builtin_ia32_sqrtps((__v4sf)__a);
}
# 252 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_rcp_ss(__m128 __a)
{
  return (__m128)__builtin_ia32_rcpss((__v4sf)__a);
}
# 269 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_rcp_ps(__m128 __a)
{
  return (__m128)__builtin_ia32_rcpps((__v4sf)__a);
}
# 288 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_rsqrt_ss(__m128 __a)
{
  return __builtin_ia32_rsqrtss((__v4sf)__a);
}
# 305 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_rsqrt_ps(__m128 __a)
{
  return __builtin_ia32_rsqrtps((__v4sf)__a);
}
# 328 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_min_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_minss((__v4sf)__a, (__v4sf)__b);
}
# 347 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_min_ps(__m128 __a, __m128 __b)
{
  return __builtin_ia32_minps((__v4sf)__a, (__v4sf)__b);
}
# 370 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_max_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_maxss((__v4sf)__a, (__v4sf)__b);
}
# 389 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_max_ps(__m128 __a, __m128 __b)
{
  return __builtin_ia32_maxps((__v4sf)__a, (__v4sf)__b);
}
# 407 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_and_ps(__m128 __a, __m128 __b)
{
  return (__m128)((__v4su)__a & (__v4su)__b);
}
# 429 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_andnot_ps(__m128 __a, __m128 __b)
{
  return (__m128)(~(__v4su)__a & (__v4su)__b);
}
# 447 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_or_ps(__m128 __a, __m128 __b)
{
  return (__m128)((__v4su)__a | (__v4su)__b);
}
# 466 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_xor_ps(__m128 __a, __m128 __b)
{
  return (__m128)((__v4su)__a ^ (__v4su)__b);
}
# 488 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpeq_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpeqss((__v4sf)__a, (__v4sf)__b);
}
# 506 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpeq_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpeqps((__v4sf)__a, (__v4sf)__b);
}
# 529 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmplt_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpltss((__v4sf)__a, (__v4sf)__b);
}
# 548 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmplt_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpltps((__v4sf)__a, (__v4sf)__b);
}
# 572 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmple_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpless((__v4sf)__a, (__v4sf)__b);
}
# 591 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmple_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpleps((__v4sf)__a, (__v4sf)__b);
}
# 614 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpgt_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_shufflevector((__v4sf)__a,
                                         (__v4sf)__builtin_ia32_cmpltss((__v4sf)__b, (__v4sf)__a),
                                         4, 1, 2, 3);
}
# 635 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpgt_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpltps((__v4sf)__b, (__v4sf)__a);
}
# 659 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpge_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_shufflevector((__v4sf)__a,
                                         (__v4sf)__builtin_ia32_cmpless((__v4sf)__b, (__v4sf)__a),
                                         4, 1, 2, 3);
}
# 680 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpge_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpleps((__v4sf)__b, (__v4sf)__a);
}
# 703 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpneq_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpneqss((__v4sf)__a, (__v4sf)__b);
}
# 722 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpneq_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpneqps((__v4sf)__a, (__v4sf)__b);
}
# 746 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpnlt_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpnltss((__v4sf)__a, (__v4sf)__b);
}
# 766 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpnlt_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpnltps((__v4sf)__a, (__v4sf)__b);
}
# 791 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpnle_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpnless((__v4sf)__a, (__v4sf)__b);
}
# 811 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpnle_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpnleps((__v4sf)__a, (__v4sf)__b);
}
# 836 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpngt_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_shufflevector((__v4sf)__a,
                                         (__v4sf)__builtin_ia32_cmpnltss((__v4sf)__b, (__v4sf)__a),
                                         4, 1, 2, 3);
}
# 858 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpngt_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpnltps((__v4sf)__b, (__v4sf)__a);
}
# 883 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpnge_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_shufflevector((__v4sf)__a,
                                         (__v4sf)__builtin_ia32_cmpnless((__v4sf)__b, (__v4sf)__a),
                                         4, 1, 2, 3);
}
# 905 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpnge_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpnleps((__v4sf)__b, (__v4sf)__a);
}
# 930 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpord_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpordss((__v4sf)__a, (__v4sf)__b);
}
# 950 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpord_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpordps((__v4sf)__a, (__v4sf)__b);
}
# 975 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpunord_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpunordss((__v4sf)__a, (__v4sf)__b);
}
# 995 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpunord_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpunordps((__v4sf)__a, (__v4sf)__b);
}
# 1019 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_comieq_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_comieq((__v4sf)__a, (__v4sf)__b);
}
# 1044 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_comilt_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_comilt((__v4sf)__a, (__v4sf)__b);
}
# 1068 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_comile_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_comile((__v4sf)__a, (__v4sf)__b);
}
# 1092 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_comigt_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_comigt((__v4sf)__a, (__v4sf)__b);
}
# 1116 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_comige_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_comige((__v4sf)__a, (__v4sf)__b);
}
# 1140 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_comineq_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_comineq((__v4sf)__a, (__v4sf)__b);
}
# 1164 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_ucomieq_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_ucomieq((__v4sf)__a, (__v4sf)__b);
}
# 1188 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_ucomilt_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_ucomilt((__v4sf)__a, (__v4sf)__b);
}
# 1213 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_ucomile_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_ucomile((__v4sf)__a, (__v4sf)__b);
}
# 1238 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_ucomigt_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_ucomigt((__v4sf)__a, (__v4sf)__b);
}
# 1263 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_ucomige_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_ucomige((__v4sf)__a, (__v4sf)__b);
}
# 1287 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_ucomineq_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_ucomineq((__v4sf)__a, (__v4sf)__b);
}
# 1305 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cvtss_si32(__m128 __a)
{
  return __builtin_ia32_cvtss2si((__v4sf)__a);
}
# 1323 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cvt_ss2si(__m128 __a)
{
  return _mm_cvtss_si32(__a);
}
# 1343 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ long long __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cvtss_si64(__m128 __a)
{
  return __builtin_ia32_cvtss2si64((__v4sf)__a);
}
# 1361 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx,sse"), __min_vector_width__(64)))
_mm_cvtps_pi32(__m128 __a)
{
  return (__m64)__builtin_ia32_cvtps2pi((__v4sf)__a);
}
# 1377 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx,sse"), __min_vector_width__(64)))
_mm_cvt_ps2pi(__m128 __a)
{
  return _mm_cvtps_pi32(__a);
}
# 1396 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cvttss_si32(__m128 __a)
{
  return __builtin_ia32_cvttss2si((__v4sf)__a);
}
# 1415 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cvtt_ss2si(__m128 __a)
{
  return _mm_cvttss_si32(__a);
}
# 1435 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ long long __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cvttss_si64(__m128 __a)
{
  return __builtin_ia32_cvttss2si64((__v4sf)__a);
}
# 1454 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx,sse"), __min_vector_width__(64)))
_mm_cvttps_pi32(__m128 __a)
{
  return (__m64)__builtin_ia32_cvttps2pi((__v4sf)__a);
}
# 1471 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx,sse"), __min_vector_width__(64)))
_mm_cvtt_ps2pi(__m128 __a)
{
  return _mm_cvttps_pi32(__a);
}
# 1493 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cvtsi32_ss(__m128 __a, int __b)
{
  __a[0] = __b;
  return __a;
}
# 1516 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cvt_si2ss(__m128 __a, int __b)
{
  return _mm_cvtsi32_ss(__a, __b);
}
# 1540 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cvtsi64_ss(__m128 __a, long long __b)
{
  __a[0] = __b;
  return __a;
}
# 1566 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("mmx,sse"), __min_vector_width__(64)))
_mm_cvtpi32_ps(__m128 __a, __m64 __b)
{
  return __builtin_ia32_cvtpi2ps((__v4sf)__a, (__v2si)__b);
}
# 1589 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("mmx,sse"), __min_vector_width__(64)))
_mm_cvt_pi2ps(__m128 __a, __m64 __b)
{
  return _mm_cvtpi32_ps(__a, __b);
}
# 1606 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ float __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cvtss_f32(__m128 __a)
{
  return __a[0];
}
# 1627 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_loadh_pi(__m128 __a, const __m64 *__p)
{
  typedef float __mm_loadh_pi_v2f32 __attribute__((__vector_size__(8)));
  struct __mm_loadh_pi_struct {
    __mm_loadh_pi_v2f32 __u;
  } __attribute__((__packed__, __may_alias__));
  __mm_loadh_pi_v2f32 __b = ((const struct __mm_loadh_pi_struct*)__p)->__u;
  __m128 __bb = __builtin_shufflevector(__b, __b, 0, 1, 0, 1);
  return __builtin_shufflevector(__a, __bb, 0, 1, 4, 5);
}
# 1654 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_loadl_pi(__m128 __a, const __m64 *__p)
{
  typedef float __mm_loadl_pi_v2f32 __attribute__((__vector_size__(8)));
  struct __mm_loadl_pi_struct {
    __mm_loadl_pi_v2f32 __u;
  } __attribute__((__packed__, __may_alias__));
  __mm_loadl_pi_v2f32 __b = ((const struct __mm_loadl_pi_struct*)__p)->__u;
  __m128 __bb = __builtin_shufflevector(__b, __b, 0, 1, 0, 1);
  return __builtin_shufflevector(__a, __bb, 4, 5, 2, 3);
}
# 1681 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_load_ss(const float *__p)
{
  struct __mm_load_ss_struct {
    float __u;
  } __attribute__((__packed__, __may_alias__));
  float __u = ((const struct __mm_load_ss_struct*)__p)->__u;
  return __extension__ (__m128){ __u, 0, 0, 0 };
}
# 1703 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_load1_ps(const float *__p)
{
  struct __mm_load1_ps_struct {
    float __u;
  } __attribute__((__packed__, __may_alias__));
  float __u = ((const struct __mm_load1_ps_struct*)__p)->__u;
  return __extension__ (__m128){ __u, __u, __u, __u };
}
# 1726 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_load_ps(const float *__p)
{
  return *(const __m128*)__p;
}
# 1743 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_loadu_ps(const float *__p)
{
  struct __loadu_ps {
    __m128_u __v;
  } __attribute__((__packed__, __may_alias__));
  return ((const struct __loadu_ps*)__p)->__v;
}
# 1765 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_loadr_ps(const float *__p)
{
  __m128 __a = _mm_load_ps(__p);
  return __builtin_shufflevector((__v4sf)__a, (__v4sf)__a, 3, 2, 1, 0);
}
# 1779 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_undefined_ps(void)
{
  return (__m128)__builtin_ia32_undef128();
}
# 1799 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_set_ss(float __w)
{
  return __extension__ (__m128){ __w, 0, 0, 0 };
}
# 1817 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_set1_ps(float __w)
{
  return __extension__ (__m128){ __w, __w, __w, __w };
}
# 1836 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_set_ps1(float __w)
{
    return _mm_set1_ps(__w);
}
# 1863 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_set_ps(float __z, float __y, float __x, float __w)
{
  return __extension__ (__m128){ __w, __x, __y, __z };
}
# 1891 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_setr_ps(float __z, float __y, float __x, float __w)
{
  return __extension__ (__m128){ __z, __y, __x, __w };
}
# 1906 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_setzero_ps(void)
{
  return __extension__ (__m128){ 0, 0, 0, 0 };
}
# 1923 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_storeh_pi(__m64 *__p, __m128 __a)
{
  typedef float __mm_storeh_pi_v2f32 __attribute__((__vector_size__(8)));
  struct __mm_storeh_pi_struct {
    __mm_storeh_pi_v2f32 __u;
  } __attribute__((__packed__, __may_alias__));
  ((struct __mm_storeh_pi_struct*)__p)->__u = __builtin_shufflevector(__a, __a, 2, 3);
}
# 1944 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_storel_pi(__m64 *__p, __m128 __a)
{
  typedef float __mm_storeh_pi_v2f32 __attribute__((__vector_size__(8)));
  struct __mm_storeh_pi_struct {
    __mm_storeh_pi_v2f32 __u;
  } __attribute__((__packed__, __may_alias__));
  ((struct __mm_storeh_pi_struct*)__p)->__u = __builtin_shufflevector(__a, __a, 0, 1);
}
# 1965 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_store_ss(float *__p, __m128 __a)
{
  struct __mm_store_ss_struct {
    float __u;
  } __attribute__((__packed__, __may_alias__));
  ((struct __mm_store_ss_struct*)__p)->__u = __a[0];
}
# 1986 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_storeu_ps(float *__p, __m128 __a)
{
  struct __storeu_ps {
    __m128_u __v;
  } __attribute__((__packed__, __may_alias__));
  ((struct __storeu_ps*)__p)->__v = __a;
}
# 2007 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_store_ps(float *__p, __m128 __a)
{
  *(__m128*)__p = __a;
}
# 2026 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_store1_ps(float *__p, __m128 __a)
{
  __a = __builtin_shufflevector((__v4sf)__a, (__v4sf)__a, 0, 0, 0, 0);
  _mm_store_ps(__p, __a);
}
# 2046 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_store_ps1(float *__p, __m128 __a)
{
  _mm_store1_ps(__p, __a);
}
# 2065 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_storer_ps(float *__p, __m128 __a)
{
  __a = __builtin_shufflevector((__v4sf)__a, (__v4sf)__a, 3, 2, 1, 0);
  _mm_store_ps(__p, __a);
}
# 2123 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("mmx,sse"), __min_vector_width__(64)))
_mm_stream_pi(__m64 *__p, __m64 __a)
{
  __builtin_ia32_movntq(__p, __a);
}
# 2142 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_stream_ps(float *__p, __m128 __a)
{
  __builtin_nontemporal_store((__v4sf)__a, (__v4sf*)__p);
}


extern "C" {
# 2161 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
void _mm_sfence(void);


}
# 2234 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx,sse"), __min_vector_width__(64)))
_mm_max_pi16(__m64 __a, __m64 __b)
{
  return (__m64)__builtin_ia32_pmaxsw((__v4hi)__a, (__v4hi)__b);
}
# 2253 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx,sse"), __min_vector_width__(64)))
_mm_max_pu8(__m64 __a, __m64 __b)
{
  return (__m64)__builtin_ia32_pmaxub((__v8qi)__a, (__v8qi)__b);
}
# 2272 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx,sse"), __min_vector_width__(64)))
_mm_min_pi16(__m64 __a, __m64 __b)
{
  return (__m64)__builtin_ia32_pminsw((__v4hi)__a, (__v4hi)__b);
}
# 2291 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx,sse"), __min_vector_width__(64)))
_mm_min_pu8(__m64 __a, __m64 __b)
{
  return (__m64)__builtin_ia32_pminub((__v8qi)__a, (__v8qi)__b);
}
# 2309 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("mmx,sse"), __min_vector_width__(64)))
_mm_movemask_pi8(__m64 __a)
{
  return __builtin_ia32_pmovmskb((__v8qi)__a);
}
# 2328 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx,sse"), __min_vector_width__(64)))
_mm_mulhi_pu16(__m64 __a, __m64 __b)
{
  return (__m64)__builtin_ia32_pmulhuw((__v4hi)__a, (__v4hi)__b);
}
# 2394 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("mmx,sse"), __min_vector_width__(64)))
_mm_maskmove_si64(__m64 __d, __m64 __n, char *__p)
{
  __builtin_ia32_maskmovq((__v8qi)__d, (__v8qi)__n, __p);
}
# 2413 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx,sse"), __min_vector_width__(64)))
_mm_avg_pu8(__m64 __a, __m64 __b)
{
  return (__m64)__builtin_ia32_pavgb((__v8qi)__a, (__v8qi)__b);
}
# 2432 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx,sse"), __min_vector_width__(64)))
_mm_avg_pu16(__m64 __a, __m64 __b)
{
  return (__m64)__builtin_ia32_pavgw((__v4hi)__a, (__v4hi)__b);
}
# 2454 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx,sse"), __min_vector_width__(64)))
_mm_sad_pu8(__m64 __a, __m64 __b)
{
  return (__m64)__builtin_ia32_psadbw((__v8qi)__a, (__v8qi)__b);
}


extern "C" {
# 2514 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
unsigned int _mm_getcsr(void);
# 2568 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
void _mm_setcsr(unsigned int __i);


}
# 2633 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_unpackhi_ps(__m128 __a, __m128 __b)
{
  return __builtin_shufflevector((__v4sf)__a, (__v4sf)__b, 2, 6, 3, 7);
}
# 2655 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_unpacklo_ps(__m128 __a, __m128 __b)
{
  return __builtin_shufflevector((__v4sf)__a, (__v4sf)__b, 0, 4, 1, 5);
}
# 2677 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_move_ss(__m128 __a, __m128 __b)
{
  __a[0] = __b[0];
  return __a;
}
# 2699 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_movehl_ps(__m128 __a, __m128 __b)
{
  return __builtin_shufflevector((__v4sf)__a, (__v4sf)__b, 6, 7, 2, 3);
}
# 2720 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_movelh_ps(__m128 __a, __m128 __b)
{
  return __builtin_shufflevector((__v4sf)__a, (__v4sf)__b, 0, 1, 4, 5);
}
# 2738 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("mmx,sse"), __min_vector_width__(64)))
_mm_cvtpi16_ps(__m64 __a)
{
  __m64 __b, __c;
  __m128 __r;

  __b = _mm_setzero_si64();
  __b = _mm_cmpgt_pi16(__b, __a);
  __c = _mm_unpackhi_pi16(__a, __b);
  __r = _mm_setzero_ps();
  __r = _mm_cvtpi32_ps(__r, __c);
  __r = _mm_movelh_ps(__r, __r);
  __c = _mm_unpacklo_pi16(__a, __b);
  __r = _mm_cvtpi32_ps(__r, __c);

  return __r;
}
# 2768 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("mmx,sse"), __min_vector_width__(64)))
_mm_cvtpu16_ps(__m64 __a)
{
  __m64 __b, __c;
  __m128 __r;

  __b = _mm_setzero_si64();
  __c = _mm_unpackhi_pi16(__a, __b);
  __r = _mm_setzero_ps();
  __r = _mm_cvtpi32_ps(__r, __c);
  __r = _mm_movelh_ps(__r, __r);
  __c = _mm_unpacklo_pi16(__a, __b);
  __r = _mm_cvtpi32_ps(__r, __c);

  return __r;
}
# 2797 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("mmx,sse"), __min_vector_width__(64)))
_mm_cvtpi8_ps(__m64 __a)
{
  __m64 __b;

  __b = _mm_setzero_si64();
  __b = _mm_cmpgt_pi8(__b, __a);
  __b = _mm_unpacklo_pi8(__a, __b);

  return _mm_cvtpi16_ps(__b);
}
# 2822 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("mmx,sse"), __min_vector_width__(64)))
_mm_cvtpu8_ps(__m64 __a)
{
  __m64 __b;

  __b = _mm_setzero_si64();
  __b = _mm_unpacklo_pi8(__a, __b);

  return _mm_cvtpi16_ps(__b);
}
# 2849 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("mmx,sse"), __min_vector_width__(64)))
_mm_cvtpi32x2_ps(__m64 __a, __m64 __b)
{
  __m128 __c;

  __c = _mm_setzero_ps();
  __c = _mm_cvtpi32_ps(__c, __b);
  __c = _mm_movelh_ps(__c, __c);

  return _mm_cvtpi32_ps(__c, __a);
}
# 2878 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx,sse"), __min_vector_width__(64)))
_mm_cvtps_pi16(__m128 __a)
{
  __m64 __b, __c;

  __b = _mm_cvtps_pi32(__a);
  __a = _mm_movehl_ps(__a, __a);
  __c = _mm_cvtps_pi32(__a);

  return _mm_packs_pi32(__b, __c);
}
# 2908 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx,sse"), __min_vector_width__(64)))
_mm_cvtps_pi8(__m128 __a)
{
  __m64 __b, __c;

  __b = _mm_cvtps_pi16(__a);
  __c = _mm_setzero_si64();

  return _mm_packs_pi16(__b, __c);
}
# 2933 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_movemask_ps(__m128 __a)
{
  return __builtin_ia32_movmskps((__v4sf)__a);
}
# 3015 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 3
# 1 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 1 3
# 3016 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/xmmintrin.h" 2 3
# 18 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 2 3

typedef double __m128d __attribute__((__vector_size__(16), __aligned__(16)));
typedef long long __m128i __attribute__((__vector_size__(16), __aligned__(16)));

typedef double __m128d_u __attribute__((__vector_size__(16), __aligned__(1)));
typedef long long __m128i_u
    __attribute__((__vector_size__(16), __aligned__(1)));


typedef double __v2df __attribute__((__vector_size__(16)));
typedef long long __v2di __attribute__((__vector_size__(16)));
typedef short __v8hi __attribute__((__vector_size__(16)));
typedef char __v16qi __attribute__((__vector_size__(16)));


typedef unsigned long long __v2du __attribute__((__vector_size__(16)));
typedef unsigned short __v8hu __attribute__((__vector_size__(16)));
typedef unsigned char __v16qu __attribute__((__vector_size__(16)));



typedef signed char __v16qs __attribute__((__vector_size__(16)));
# 64 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_add_sd(__m128d __a,
                                                        __m128d __b) {
  __a[0] += __b[0];
  return __a;
}
# 82 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_add_pd(__m128d __a,
                                                        __m128d __b) {
  return (__m128d)((__v2df)__a + (__v2df)__b);
}
# 104 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_sub_sd(__m128d __a,
                                                        __m128d __b) {
  __a[0] -= __b[0];
  return __a;
}
# 122 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_sub_pd(__m128d __a,
                                                        __m128d __b) {
  return (__m128d)((__v2df)__a - (__v2df)__b);
}
# 143 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_mul_sd(__m128d __a,
                                                        __m128d __b) {
  __a[0] *= __b[0];
  return __a;
}
# 161 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_mul_pd(__m128d __a,
                                                        __m128d __b) {
  return (__m128d)((__v2df)__a * (__v2df)__b);
}
# 183 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_div_sd(__m128d __a,
                                                        __m128d __b) {
  __a[0] /= __b[0];
  return __a;
}
# 202 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_div_pd(__m128d __a,
                                                        __m128d __b) {
  return (__m128d)((__v2df)__a / (__v2df)__b);
}
# 226 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_sqrt_sd(__m128d __a,
                                                         __m128d __b) {
  __m128d __c = __builtin_ia32_sqrtsd((__v2df)__b);
  return __extension__(__m128d){__c[0], __a[1]};
}
# 243 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_sqrt_pd(__m128d __a) {
  return __builtin_ia32_sqrtpd((__v2df)__a);
}
# 265 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_min_sd(__m128d __a,
                                                        __m128d __b) {
  return __builtin_ia32_minsd((__v2df)__a, (__v2df)__b);
}
# 284 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_min_pd(__m128d __a,
                                                        __m128d __b) {
  return __builtin_ia32_minpd((__v2df)__a, (__v2df)__b);
}
# 307 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_max_sd(__m128d __a,
                                                        __m128d __b) {
  return __builtin_ia32_maxsd((__v2df)__a, (__v2df)__b);
}
# 326 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_max_pd(__m128d __a,
                                                        __m128d __b) {
  return __builtin_ia32_maxpd((__v2df)__a, (__v2df)__b);
}
# 343 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_and_pd(__m128d __a,
                                                        __m128d __b) {
  return (__m128d)((__v2du)__a & (__v2du)__b);
}
# 363 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_andnot_pd(__m128d __a,
                                                           __m128d __b) {
  return (__m128d)(~(__v2du)__a & (__v2du)__b);
}
# 380 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_or_pd(__m128d __a,
                                                       __m128d __b) {
  return (__m128d)((__v2du)__a | (__v2du)__b);
}
# 397 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_xor_pd(__m128d __a,
                                                        __m128d __b) {
  return (__m128d)((__v2du)__a ^ (__v2du)__b);
}
# 415 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpeq_pd(__m128d __a,
                                                          __m128d __b) {
  return (__m128d)__builtin_ia32_cmpeqpd((__v2df)__a, (__v2df)__b);
}
# 434 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmplt_pd(__m128d __a,
                                                          __m128d __b) {
  return (__m128d)__builtin_ia32_cmpltpd((__v2df)__a, (__v2df)__b);
}
# 454 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmple_pd(__m128d __a,
                                                          __m128d __b) {
  return (__m128d)__builtin_ia32_cmplepd((__v2df)__a, (__v2df)__b);
}
# 474 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpgt_pd(__m128d __a,
                                                          __m128d __b) {
  return (__m128d)__builtin_ia32_cmpltpd((__v2df)__b, (__v2df)__a);
}
# 494 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpge_pd(__m128d __a,
                                                          __m128d __b) {
  return (__m128d)__builtin_ia32_cmplepd((__v2df)__b, (__v2df)__a);
}
# 516 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpord_pd(__m128d __a,
                                                           __m128d __b) {
  return (__m128d)__builtin_ia32_cmpordpd((__v2df)__a, (__v2df)__b);
}
# 539 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpunord_pd(__m128d __a,
                                                             __m128d __b) {
  return (__m128d)__builtin_ia32_cmpunordpd((__v2df)__a, (__v2df)__b);
}
# 559 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpneq_pd(__m128d __a,
                                                           __m128d __b) {
  return (__m128d)__builtin_ia32_cmpneqpd((__v2df)__a, (__v2df)__b);
}
# 579 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpnlt_pd(__m128d __a,
                                                           __m128d __b) {
  return (__m128d)__builtin_ia32_cmpnltpd((__v2df)__a, (__v2df)__b);
}
# 599 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpnle_pd(__m128d __a,
                                                           __m128d __b) {
  return (__m128d)__builtin_ia32_cmpnlepd((__v2df)__a, (__v2df)__b);
}
# 619 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpngt_pd(__m128d __a,
                                                           __m128d __b) {
  return (__m128d)__builtin_ia32_cmpnltpd((__v2df)__b, (__v2df)__a);
}
# 639 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpnge_pd(__m128d __a,
                                                           __m128d __b) {
  return (__m128d)__builtin_ia32_cmpnlepd((__v2df)__b, (__v2df)__a);
}
# 661 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpeq_sd(__m128d __a,
                                                          __m128d __b) {
  return (__m128d)__builtin_ia32_cmpeqsd((__v2df)__a, (__v2df)__b);
}
# 685 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmplt_sd(__m128d __a,
                                                          __m128d __b) {
  return (__m128d)__builtin_ia32_cmpltsd((__v2df)__a, (__v2df)__b);
}
# 709 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmple_sd(__m128d __a,
                                                          __m128d __b) {
  return (__m128d)__builtin_ia32_cmplesd((__v2df)__a, (__v2df)__b);
}
# 733 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpgt_sd(__m128d __a,
                                                          __m128d __b) {
  __m128d __c = __builtin_ia32_cmpltsd((__v2df)__b, (__v2df)__a);
  return __extension__(__m128d){__c[0], __a[1]};
}
# 758 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpge_sd(__m128d __a,
                                                          __m128d __b) {
  __m128d __c = __builtin_ia32_cmplesd((__v2df)__b, (__v2df)__a);
  return __extension__(__m128d){__c[0], __a[1]};
}
# 785 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpord_sd(__m128d __a,
                                                           __m128d __b) {
  return (__m128d)__builtin_ia32_cmpordsd((__v2df)__a, (__v2df)__b);
}
# 812 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpunord_sd(__m128d __a,
                                                             __m128d __b) {
  return (__m128d)__builtin_ia32_cmpunordsd((__v2df)__a, (__v2df)__b);
}
# 836 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpneq_sd(__m128d __a,
                                                           __m128d __b) {
  return (__m128d)__builtin_ia32_cmpneqsd((__v2df)__a, (__v2df)__b);
}
# 860 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpnlt_sd(__m128d __a,
                                                           __m128d __b) {
  return (__m128d)__builtin_ia32_cmpnltsd((__v2df)__a, (__v2df)__b);
}
# 884 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpnle_sd(__m128d __a,
                                                           __m128d __b) {
  return (__m128d)__builtin_ia32_cmpnlesd((__v2df)__a, (__v2df)__b);
}
# 908 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpngt_sd(__m128d __a,
                                                           __m128d __b) {
  __m128d __c = __builtin_ia32_cmpnltsd((__v2df)__b, (__v2df)__a);
  return __extension__(__m128d){__c[0], __a[1]};
}
# 933 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpnge_sd(__m128d __a,
                                                           __m128d __b) {
  __m128d __c = __builtin_ia32_cmpnlesd((__v2df)__b, (__v2df)__a);
  return __extension__(__m128d){__c[0], __a[1]};
}
# 957 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_comieq_sd(__m128d __a,
                                                       __m128d __b) {
  return __builtin_ia32_comisdeq((__v2df)__a, (__v2df)__b);
}
# 982 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_comilt_sd(__m128d __a,
                                                       __m128d __b) {
  return __builtin_ia32_comisdlt((__v2df)__a, (__v2df)__b);
}
# 1007 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_comile_sd(__m128d __a,
                                                       __m128d __b) {
  return __builtin_ia32_comisdle((__v2df)__a, (__v2df)__b);
}
# 1032 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_comigt_sd(__m128d __a,
                                                       __m128d __b) {
  return __builtin_ia32_comisdgt((__v2df)__a, (__v2df)__b);
}
# 1057 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_comige_sd(__m128d __a,
                                                       __m128d __b) {
  return __builtin_ia32_comisdge((__v2df)__a, (__v2df)__b);
}
# 1082 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_comineq_sd(__m128d __a,
                                                        __m128d __b) {
  return __builtin_ia32_comisdneq((__v2df)__a, (__v2df)__b);
}
# 1105 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_ucomieq_sd(__m128d __a,
                                                        __m128d __b) {
  return __builtin_ia32_ucomisdeq((__v2df)__a, (__v2df)__b);
}
# 1130 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_ucomilt_sd(__m128d __a,
                                                        __m128d __b) {
  return __builtin_ia32_ucomisdlt((__v2df)__a, (__v2df)__b);
}
# 1155 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_ucomile_sd(__m128d __a,
                                                        __m128d __b) {
  return __builtin_ia32_ucomisdle((__v2df)__a, (__v2df)__b);
}
# 1180 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_ucomigt_sd(__m128d __a,
                                                        __m128d __b) {
  return __builtin_ia32_ucomisdgt((__v2df)__a, (__v2df)__b);
}
# 1205 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_ucomige_sd(__m128d __a,
                                                        __m128d __b) {
  return __builtin_ia32_ucomisdge((__v2df)__a, (__v2df)__b);
}
# 1230 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_ucomineq_sd(__m128d __a,
                                                         __m128d __b) {
  return __builtin_ia32_ucomisdneq((__v2df)__a, (__v2df)__b);
}
# 1248 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvtpd_ps(__m128d __a) {
  return __builtin_ia32_cvtpd2ps((__v2df)__a);
}
# 1266 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvtps_pd(__m128 __a) {
  return (__m128d) __builtin_convertvector(
      __builtin_shufflevector((__v4sf)__a, (__v4sf)__a, 0, 1), __v2df);
}
# 1287 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvtepi32_pd(__m128i __a) {
  return (__m128d) __builtin_convertvector(
      __builtin_shufflevector((__v4si)__a, (__v4si)__a, 0, 1), __v2df);
}
# 1305 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvtpd_epi32(__m128d __a) {
  return __builtin_ia32_cvtpd2dq((__v2df)__a);
}
# 1320 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvtsd_si32(__m128d __a) {
  return __builtin_ia32_cvtsd2si((__v2df)__a);
}
# 1343 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvtsd_ss(__m128 __a,
                                                         __m128d __b) {
  return (__m128)__builtin_ia32_cvtsd2ss((__v4sf)__a, (__v2df)__b);
}
# 1365 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvtsi32_sd(__m128d __a,
                                                            int __b) {
  __a[0] = __b;
  return __a;
}
# 1390 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvtss_sd(__m128d __a,
                                                          __m128 __b) {
  __a[0] = __b[0];
  return __a;
}
# 1413 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvttpd_epi32(__m128d __a) {
  return (__m128i)__builtin_ia32_cvttpd2dq((__v2df)__a);
}
# 1429 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvttsd_si32(__m128d __a) {
  return __builtin_ia32_cvttsd2si((__v2df)__a);
}
# 1444 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx,sse2"), __min_vector_width__(64))) _mm_cvtpd_pi32(__m128d __a) {
  return (__m64)__builtin_ia32_cvtpd2pi((__v2df)__a);
}
# 1462 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx,sse2"), __min_vector_width__(64))) _mm_cvttpd_pi32(__m128d __a) {
  return (__m64)__builtin_ia32_cvttpd2pi((__v2df)__a);
}
# 1477 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("mmx,sse2"), __min_vector_width__(64))) _mm_cvtpi32_pd(__m64 __a) {
  return __builtin_ia32_cvtpi2pd((__v2si)__a);
}
# 1492 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ double __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvtsd_f64(__m128d __a) {
  return __a[0];
}
# 1507 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_load_pd(double const *__dp) {
  return *(const __m128d *)__dp;
}
# 1523 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_load1_pd(double const *__dp) {
  struct __mm_load1_pd_struct {
    double __u;
  } __attribute__((__packed__, __may_alias__));
  double __u = ((const struct __mm_load1_pd_struct *)__dp)->__u;
  return __extension__(__m128d){__u, __u};
}
# 1547 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_loadr_pd(double const *__dp) {
  __m128d __u = *(const __m128d *)__dp;
  return __builtin_shufflevector((__v2df)__u, (__v2df)__u, 1, 0);
}
# 1563 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_loadu_pd(double const *__dp) {
  struct __loadu_pd {
    __m128d_u __v;
  } __attribute__((__packed__, __may_alias__));
  return ((const struct __loadu_pd *)__dp)->__v;
}
# 1581 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_loadu_si64(void const *__a) {
  struct __loadu_si64 {
    long long __v;
  } __attribute__((__packed__, __may_alias__));
  long long __u = ((const struct __loadu_si64 *)__a)->__v;
  return __extension__(__m128i)(__v2di){__u, 0LL};
}
# 1600 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_loadu_si32(void const *__a) {
  struct __loadu_si32 {
    int __v;
  } __attribute__((__packed__, __may_alias__));
  int __u = ((const struct __loadu_si32 *)__a)->__v;
  return __extension__(__m128i)(__v4si){__u, 0, 0, 0};
}
# 1619 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_loadu_si16(void const *__a) {
  struct __loadu_si16 {
    short __v;
  } __attribute__((__packed__, __may_alias__));
  short __u = ((const struct __loadu_si16 *)__a)->__v;
  return __extension__(__m128i)(__v8hi){__u, 0, 0, 0, 0, 0, 0, 0};
}
# 1638 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_load_sd(double const *__dp) {
  struct __mm_load_sd_struct {
    double __u;
  } __attribute__((__packed__, __may_alias__));
  double __u = ((const struct __mm_load_sd_struct *)__dp)->__u;
  return __extension__(__m128d){__u, 0};
}
# 1663 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_loadh_pd(__m128d __a,
                                                          double const *__dp) {
  struct __mm_loadh_pd_struct {
    double __u;
  } __attribute__((__packed__, __may_alias__));
  double __u = ((const struct __mm_loadh_pd_struct *)__dp)->__u;
  return __extension__(__m128d){__a[0], __u};
}
# 1689 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_loadl_pd(__m128d __a,
                                                          double const *__dp) {
  struct __mm_loadl_pd_struct {
    double __u;
  } __attribute__((__packed__, __may_alias__));
  double __u = ((const struct __mm_loadl_pd_struct *)__dp)->__u;
  return __extension__(__m128d){__u, __a[1]};
}
# 1709 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_undefined_pd(void) {
  return (__m128d)__builtin_ia32_undef128();
}
# 1727 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_set_sd(double __w) {
  return __extension__(__m128d){__w, 0};
}
# 1743 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_set1_pd(double __w) {
  return __extension__(__m128d){__w, __w};
}
# 1759 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_set_pd1(double __w) {
  return _mm_set1_pd(__w);
}
# 1777 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_set_pd(double __w,
                                                        double __x) {
  return __extension__(__m128d){__x, __w};
}
# 1797 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_setr_pd(double __w,
                                                         double __x) {
  return __extension__(__m128d){__w, __x};
}
# 1811 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_setzero_pd(void) {
  return __extension__(__m128d){0, 0};
}
# 1830 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_move_sd(__m128d __a,
                                                         __m128d __b) {
  __a[0] = __b[0];
  return __a;
}
# 1847 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_store_sd(double *__dp,
                                                       __m128d __a) {
  struct __mm_store_sd_struct {
    double __u;
  } __attribute__((__packed__, __may_alias__));
  ((struct __mm_store_sd_struct *)__dp)->__u = __a[0];
}
# 1868 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_store_pd(double *__dp,
                                                       __m128d __a) {
  *(__m128d *)__dp = __a;
}
# 1887 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_store1_pd(double *__dp,
                                                        __m128d __a) {
  __a = __builtin_shufflevector((__v2df)__a, (__v2df)__a, 0, 0);
  _mm_store_pd(__dp, __a);
}
# 1907 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_store_pd1(double *__dp,
                                                        __m128d __a) {
  _mm_store1_pd(__dp, __a);
}
# 1924 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_storeu_pd(double *__dp,
                                                        __m128d __a) {
  struct __storeu_pd {
    __m128d_u __v;
  } __attribute__((__packed__, __may_alias__));
  ((struct __storeu_pd *)__dp)->__v = __a;
}
# 1946 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_storer_pd(double *__dp,
                                                        __m128d __a) {
  __a = __builtin_shufflevector((__v2df)__a, (__v2df)__a, 1, 0);
  *(__m128d *)__dp = __a;
}
# 1963 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_storeh_pd(double *__dp,
                                                        __m128d __a) {
  struct __mm_storeh_pd_struct {
    double __u;
  } __attribute__((__packed__, __may_alias__));
  ((struct __mm_storeh_pd_struct *)__dp)->__u = __a[1];
}
# 1982 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_storel_pd(double *__dp,
                                                        __m128d __a) {
  struct __mm_storeh_pd_struct {
    double __u;
  } __attribute__((__packed__, __may_alias__));
  ((struct __mm_storeh_pd_struct *)__dp)->__u = __a[0];
}
# 2006 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_add_epi8(__m128i __a,
                                                          __m128i __b) {
  return (__m128i)((__v16qu)__a + (__v16qu)__b);
}
# 2027 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_add_epi16(__m128i __a,
                                                           __m128i __b) {
  return (__m128i)((__v8hu)__a + (__v8hu)__b);
}
# 2048 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_add_epi32(__m128i __a,
                                                           __m128i __b) {
  return (__m128i)((__v4su)__a + (__v4su)__b);
}
# 2065 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx,sse2"), __min_vector_width__(64))) _mm_add_si64(__m64 __a,
                                                            __m64 __b) {
  return (__m64)__builtin_ia32_paddq((__v1di)__a, (__v1di)__b);
}
# 2086 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_add_epi64(__m128i __a,
                                                           __m128i __b) {
  return (__m128i)((__v2du)__a + (__v2du)__b);
}
# 2106 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_adds_epi8(__m128i __a,
                                                           __m128i __b) {
  return (__m128i)__builtin_elementwise_add_sat((__v16qs)__a, (__v16qs)__b);
}
# 2127 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_adds_epi16(__m128i __a,
                                                            __m128i __b) {
  return (__m128i)__builtin_elementwise_add_sat((__v8hi)__a, (__v8hi)__b);
}
# 2147 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_adds_epu8(__m128i __a,
                                                           __m128i __b) {
  return (__m128i)__builtin_elementwise_add_sat((__v16qu)__a, (__v16qu)__b);
}
# 2167 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_adds_epu16(__m128i __a,
                                                            __m128i __b) {
  return (__m128i)__builtin_elementwise_add_sat((__v8hu)__a, (__v8hu)__b);
}
# 2186 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_avg_epu8(__m128i __a,
                                                          __m128i __b) {
  return (__m128i)__builtin_ia32_pavgb128((__v16qi)__a, (__v16qi)__b);
}
# 2205 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_avg_epu16(__m128i __a,
                                                           __m128i __b) {
  return (__m128i)__builtin_ia32_pavgw128((__v8hi)__a, (__v8hi)__b);
}
# 2230 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_madd_epi16(__m128i __a,
                                                            __m128i __b) {
  return (__m128i)__builtin_ia32_pmaddwd128((__v8hi)__a, (__v8hi)__b);
}
# 2249 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_max_epi16(__m128i __a,
                                                           __m128i __b) {
  return (__m128i)__builtin_elementwise_max((__v8hi)__a, (__v8hi)__b);
}
# 2268 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_max_epu8(__m128i __a,
                                                          __m128i __b) {
  return (__m128i)__builtin_elementwise_max((__v16qu)__a, (__v16qu)__b);
}
# 2287 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_min_epi16(__m128i __a,
                                                           __m128i __b) {
  return (__m128i)__builtin_elementwise_min((__v8hi)__a, (__v8hi)__b);
}
# 2306 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_min_epu8(__m128i __a,
                                                          __m128i __b) {
  return (__m128i)__builtin_elementwise_min((__v16qu)__a, (__v16qu)__b);
}
# 2325 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_mulhi_epi16(__m128i __a,
                                                             __m128i __b) {
  return (__m128i)__builtin_ia32_pmulhw128((__v8hi)__a, (__v8hi)__b);
}
# 2344 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_mulhi_epu16(__m128i __a,
                                                             __m128i __b) {
  return (__m128i)__builtin_ia32_pmulhuw128((__v8hi)__a, (__v8hi)__b);
}
# 2363 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_mullo_epi16(__m128i __a,
                                                             __m128i __b) {
  return (__m128i)((__v8hu)__a * (__v8hu)__b);
}
# 2381 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx,sse2"), __min_vector_width__(64))) _mm_mul_su32(__m64 __a,
                                                            __m64 __b) {
  return __builtin_ia32_pmuludq((__v2si)__a, (__v2si)__b);
}
# 2399 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_mul_epu32(__m128i __a,
                                                           __m128i __b) {
  return __builtin_ia32_pmuludq128((__v4si)__a, (__v4si)__b);
}
# 2420 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_sad_epu8(__m128i __a,
                                                          __m128i __b) {
  return __builtin_ia32_psadbw128((__v16qi)__a, (__v16qi)__b);
}
# 2437 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_sub_epi8(__m128i __a,
                                                          __m128i __b) {
  return (__m128i)((__v16qu)__a - (__v16qu)__b);
}
# 2454 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_sub_epi16(__m128i __a,
                                                           __m128i __b) {
  return (__m128i)((__v8hu)__a - (__v8hu)__b);
}
# 2471 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_sub_epi32(__m128i __a,
                                                           __m128i __b) {
  return (__m128i)((__v4su)__a - (__v4su)__b);
}
# 2489 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("mmx,sse2"), __min_vector_width__(64))) _mm_sub_si64(__m64 __a,
                                                            __m64 __b) {
  return (__m64)__builtin_ia32_psubq((__v1di)__a, (__v1di)__b);
}
# 2506 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_sub_epi64(__m128i __a,
                                                           __m128i __b) {
  return (__m128i)((__v2du)__a - (__v2du)__b);
}
# 2526 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_subs_epi8(__m128i __a,
                                                           __m128i __b) {
  return (__m128i)__builtin_elementwise_sub_sat((__v16qs)__a, (__v16qs)__b);
}
# 2546 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_subs_epi16(__m128i __a,
                                                            __m128i __b) {
  return (__m128i)__builtin_elementwise_sub_sat((__v8hi)__a, (__v8hi)__b);
}
# 2565 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_subs_epu8(__m128i __a,
                                                           __m128i __b) {
  return (__m128i)__builtin_elementwise_sub_sat((__v16qu)__a, (__v16qu)__b);
}
# 2584 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_subs_epu16(__m128i __a,
                                                            __m128i __b) {
  return (__m128i)__builtin_elementwise_sub_sat((__v8hu)__a, (__v8hu)__b);
}
# 2601 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_and_si128(__m128i __a,
                                                           __m128i __b) {
  return (__m128i)((__v2du)__a & (__v2du)__b);
}
# 2620 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_andnot_si128(__m128i __a,
                                                              __m128i __b) {
  return (__m128i)(~(__v2du)__a & (__v2du)__b);
}
# 2636 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_or_si128(__m128i __a,
                                                          __m128i __b) {
  return (__m128i)((__v2du)__a | (__v2du)__b);
}
# 2653 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_xor_si128(__m128i __a,
                                                           __m128i __b) {
  return (__m128i)((__v2du)__a ^ (__v2du)__b);
}
# 2696 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_slli_epi16(__m128i __a,
                                                            int __count) {
  return (__m128i)__builtin_ia32_psllwi128((__v8hi)__a, __count);
}
# 2714 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_sll_epi16(__m128i __a,
                                                           __m128i __count) {
  return (__m128i)__builtin_ia32_psllw128((__v8hi)__a, (__v8hi)__count);
}
# 2732 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_slli_epi32(__m128i __a,
                                                            int __count) {
  return (__m128i)__builtin_ia32_pslldi128((__v4si)__a, __count);
}
# 2750 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_sll_epi32(__m128i __a,
                                                           __m128i __count) {
  return (__m128i)__builtin_ia32_pslld128((__v4si)__a, (__v4si)__count);
}
# 2768 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_slli_epi64(__m128i __a,
                                                            int __count) {
  return __builtin_ia32_psllqi128((__v2di)__a, __count);
}
# 2786 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_sll_epi64(__m128i __a,
                                                           __m128i __count) {
  return __builtin_ia32_psllq128((__v2di)__a, (__v2di)__count);
}
# 2805 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_srai_epi16(__m128i __a,
                                                            int __count) {
  return (__m128i)__builtin_ia32_psrawi128((__v8hi)__a, __count);
}
# 2824 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_sra_epi16(__m128i __a,
                                                           __m128i __count) {
  return (__m128i)__builtin_ia32_psraw128((__v8hi)__a, (__v8hi)__count);
}
# 2843 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_srai_epi32(__m128i __a,
                                                            int __count) {
  return (__m128i)__builtin_ia32_psradi128((__v4si)__a, __count);
}
# 2862 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_sra_epi32(__m128i __a,
                                                           __m128i __count) {
  return (__m128i)__builtin_ia32_psrad128((__v4si)__a, (__v4si)__count);
}
# 2905 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_srli_epi16(__m128i __a,
                                                            int __count) {
  return (__m128i)__builtin_ia32_psrlwi128((__v8hi)__a, __count);
}
# 2923 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_srl_epi16(__m128i __a,
                                                           __m128i __count) {
  return (__m128i)__builtin_ia32_psrlw128((__v8hi)__a, (__v8hi)__count);
}
# 2941 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_srli_epi32(__m128i __a,
                                                            int __count) {
  return (__m128i)__builtin_ia32_psrldi128((__v4si)__a, __count);
}
# 2959 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_srl_epi32(__m128i __a,
                                                           __m128i __count) {
  return (__m128i)__builtin_ia32_psrld128((__v4si)__a, (__v4si)__count);
}
# 2977 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_srli_epi64(__m128i __a,
                                                            int __count) {
  return __builtin_ia32_psrlqi128((__v2di)__a, __count);
}
# 2995 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_srl_epi64(__m128i __a,
                                                           __m128i __count) {
  return __builtin_ia32_psrlq128((__v2di)__a, (__v2di)__count);
}
# 3013 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpeq_epi8(__m128i __a,
                                                            __m128i __b) {
  return (__m128i)((__v16qi)__a == (__v16qi)__b);
}
# 3031 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpeq_epi16(__m128i __a,
                                                             __m128i __b) {
  return (__m128i)((__v8hi)__a == (__v8hi)__b);
}
# 3049 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpeq_epi32(__m128i __a,
                                                             __m128i __b) {
  return (__m128i)((__v4si)__a == (__v4si)__b);
}
# 3068 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpgt_epi8(__m128i __a,
                                                            __m128i __b) {


  return (__m128i)((__v16qs)__a > (__v16qs)__b);
}
# 3090 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpgt_epi16(__m128i __a,
                                                             __m128i __b) {
  return (__m128i)((__v8hi)__a > (__v8hi)__b);
}
# 3110 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpgt_epi32(__m128i __a,
                                                             __m128i __b) {
  return (__m128i)((__v4si)__a > (__v4si)__b);
}
# 3130 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmplt_epi8(__m128i __a,
                                                            __m128i __b) {
  return _mm_cmpgt_epi8(__b, __a);
}
# 3150 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmplt_epi16(__m128i __a,
                                                             __m128i __b) {
  return _mm_cmpgt_epi16(__b, __a);
}
# 3170 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmplt_epi32(__m128i __a,
                                                             __m128i __b) {
  return _mm_cmpgt_epi32(__b, __a);
}
# 3193 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvtsi64_sd(__m128d __a,
                                                            long long __b) {
  __a[0] = __b;
  return __a;
}
# 3210 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ long long __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvtsd_si64(__m128d __a) {
  return __builtin_ia32_cvtsd2si64((__v2df)__a);
}
# 3226 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ long long __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvttsd_si64(__m128d __a) {
  return __builtin_ia32_cvttsd2si64((__v2df)__a);
}
# 3240 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvtepi32_ps(__m128i __a) {
  return (__m128) __builtin_convertvector((__v4si)__a, __v4sf);
}
# 3254 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvtps_epi32(__m128 __a) {
  return (__m128i)__builtin_ia32_cvtps2dq((__v4sf)__a);
}
# 3269 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvttps_epi32(__m128 __a) {
  return (__m128i)__builtin_ia32_cvttps2dq((__v4sf)__a);
}
# 3283 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvtsi32_si128(int __a) {
  return __extension__(__m128i)(__v4si){__a, 0, 0, 0};
}
# 3298 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvtsi64_si128(long long __a) {
  return __extension__(__m128i)(__v2di){__a, 0};
}
# 3313 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvtsi128_si32(__m128i __a) {
  __v4si __b = (__v4si)__a;
  return __b[0];
}
# 3329 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ long long __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvtsi128_si64(__m128i __a) {
  return __a[0];
}
# 3343 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_load_si128(__m128i const *__p) {
  return *__p;
}
# 3358 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_loadu_si128(__m128i_u const *__p) {
  struct __loadu_si128 {
    __m128i_u __v;
  } __attribute__((__packed__, __may_alias__));
  return ((const struct __loadu_si128 *)__p)->__v;
}
# 3378 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_loadl_epi64(__m128i_u const *__p) {
  struct __mm_loadl_epi64_struct {
    long long __u;
  } __attribute__((__packed__, __may_alias__));
  return __extension__(__m128i){
      ((const struct __mm_loadl_epi64_struct *)__p)->__u, 0};
}
# 3396 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_undefined_si128(void) {
  return (__m128i)__builtin_ia32_undef128();
}
# 3416 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_set_epi64x(long long __q1,
                                                            long long __q0) {
  return __extension__(__m128i)(__v2di){__q0, __q1};
}
# 3437 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_set_epi64(__m64 __q1,
                                                           __m64 __q0) {
  return _mm_set_epi64x((long long)__q1, (long long)__q0);
}
# 3464 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_set_epi32(int __i3, int __i2,
                                                           int __i1, int __i0) {
  return __extension__(__m128i)(__v4si){__i0, __i1, __i2, __i3};
}
# 3503 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_set_epi16(short __w7, short __w6, short __w5, short __w4, short __w3,
              short __w2, short __w1, short __w0) {
  return __extension__(__m128i)(__v8hi){__w0, __w1, __w2, __w3,
                                        __w4, __w5, __w6, __w7};
}
# 3552 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_set_epi8(char __b15, char __b14, char __b13, char __b12, char __b11,
             char __b10, char __b9, char __b8, char __b7, char __b6, char __b5,
             char __b4, char __b3, char __b2, char __b1, char __b0) {
  return __extension__(__m128i)(__v16qi){
      __b0, __b1, __b2, __b3, __b4, __b5, __b6, __b7,
      __b8, __b9, __b10, __b11, __b12, __b13, __b14, __b15};
}
# 3574 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_set1_epi64x(long long __q) {
  return _mm_set_epi64x(__q, __q);
}
# 3591 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_set1_epi64(__m64 __q) {
  return _mm_set_epi64(__q, __q);
}
# 3608 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_set1_epi32(int __i) {
  return _mm_set_epi32(__i, __i, __i, __i);
}
# 3625 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_set1_epi16(short __w) {
  return _mm_set_epi16(__w, __w, __w, __w, __w, __w, __w, __w);
}
# 3642 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_set1_epi8(char __b) {
  return _mm_set_epi8(__b, __b, __b, __b, __b, __b, __b, __b, __b, __b, __b,
                      __b, __b, __b, __b, __b);
}
# 3661 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_setr_epi64(__m64 __q0,
                                                            __m64 __q1) {
  return _mm_set_epi64(__q1, __q0);
}
# 3683 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_setr_epi32(int __i0, int __i1,
                                                            int __i2,
                                                            int __i3) {
  return _mm_set_epi32(__i3, __i2, __i1, __i0);
}
# 3714 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_setr_epi16(short __w0, short __w1, short __w2, short __w3, short __w4,
               short __w5, short __w6, short __w7) {
  return _mm_set_epi16(__w7, __w6, __w5, __w4, __w3, __w2, __w1, __w0);
}
# 3761 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_setr_epi8(char __b0, char __b1, char __b2, char __b3, char __b4, char __b5,
              char __b6, char __b7, char __b8, char __b9, char __b10,
              char __b11, char __b12, char __b13, char __b14, char __b15) {
  return _mm_set_epi8(__b15, __b14, __b13, __b12, __b11, __b10, __b9, __b8,
                      __b7, __b6, __b5, __b4, __b3, __b2, __b1, __b0);
}
# 3777 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_setzero_si128(void) {
  return __extension__(__m128i)(__v2di){0LL, 0LL};
}
# 3793 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_store_si128(__m128i *__p,
                                                          __m128i __b) {
  *__p = __b;
}
# 3808 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_storeu_si128(__m128i_u *__p,
                                                           __m128i __b) {
  struct __storeu_si128 {
    __m128i_u __v;
  } __attribute__((__packed__, __may_alias__));
  ((struct __storeu_si128 *)__p)->__v = __b;
}
# 3828 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_storeu_si64(void *__p,
                                                          __m128i __b) {
  struct __storeu_si64 {
    long long __v;
  } __attribute__((__packed__, __may_alias__));
  ((struct __storeu_si64 *)__p)->__v = ((__v2di)__b)[0];
}
# 3848 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_storeu_si32(void *__p,
                                                          __m128i __b) {
  struct __storeu_si32 {
    int __v;
  } __attribute__((__packed__, __may_alias__));
  ((struct __storeu_si32 *)__p)->__v = ((__v4si)__b)[0];
}
# 3868 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_storeu_si16(void *__p,
                                                          __m128i __b) {
  struct __storeu_si16 {
    short __v;
  } __attribute__((__packed__, __may_alias__));
  ((struct __storeu_si16 *)__p)->__v = ((__v8hi)__b)[0];
}
# 3897 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_maskmoveu_si128(__m128i __d,
                                                              __m128i __n,
                                                              char *__p) {
  __builtin_ia32_maskmovdqu((__v16qi)__d, (__v16qi)__n, __p);
}
# 3916 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_storel_epi64(__m128i_u *__p,
                                                           __m128i __a) {
  struct __mm_storel_epi64_struct {
    long long __u;
  } __attribute__((__packed__, __may_alias__));
  ((struct __mm_storel_epi64_struct *)__p)->__u = __a[0];
}
# 3938 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_stream_pd(double *__p,
                                                        __m128d __a) {
  __builtin_nontemporal_store((__v2df)__a, (__v2df *)__p);
}
# 3956 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_stream_si128(__m128i *__p,
                                                           __m128i __a) {
  __builtin_nontemporal_store((__v2di)__a, (__v2di *)__p);
}
# 3974 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ void
    __attribute__((__always_inline__, __nodebug__, __target__("sse2")))
    _mm_stream_si32(int *__p, int __a) {
  __builtin_ia32_movnti(__p, __a);
}
# 3994 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ void
    __attribute__((__always_inline__, __nodebug__, __target__("sse2")))
    _mm_stream_si64(long long *__p, long long __a) {
  __builtin_ia32_movnti64(__p, __a);
}



extern "C" {
# 4015 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
void _mm_clflush(void const *__p);
# 4026 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
void _mm_lfence(void);
# 4037 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
void _mm_mfence(void);


}
# 4065 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_packs_epi16(__m128i __a,
                                                             __m128i __b) {
  return (__m128i)__builtin_ia32_packsswb128((__v8hi)__a, (__v8hi)__b);
}
# 4092 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_packs_epi32(__m128i __a,
                                                             __m128i __b) {
  return (__m128i)__builtin_ia32_packssdw128((__v4si)__a, (__v4si)__b);
}
# 4119 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_packus_epi16(__m128i __a,
                                                              __m128i __b) {
  return (__m128i)__builtin_ia32_packuswb128((__v8hi)__a, (__v8hi)__b);
}
# 4194 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_movemask_epi8(__m128i __a) {
  return __builtin_ia32_pmovmskb128((__v16qi)__a);
}
# 4327 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_unpackhi_epi8(__m128i __a,
                                                               __m128i __b) {
  return (__m128i)__builtin_shufflevector(
      (__v16qi)__a, (__v16qi)__b, 8, 16 + 8, 9, 16 + 9, 10, 16 + 10, 11,
      16 + 11, 12, 16 + 12, 13, 16 + 13, 14, 16 + 14, 15, 16 + 15);
}
# 4355 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_unpackhi_epi16(__m128i __a,
                                                                __m128i __b) {
  return (__m128i)__builtin_shufflevector((__v8hi)__a, (__v8hi)__b, 4, 8 + 4, 5,
                                          8 + 5, 6, 8 + 6, 7, 8 + 7);
}
# 4378 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_unpackhi_epi32(__m128i __a,
                                                                __m128i __b) {
  return (__m128i)__builtin_shufflevector((__v4si)__a, (__v4si)__b, 2, 4 + 2, 3,
                                          4 + 3);
}
# 4399 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_unpackhi_epi64(__m128i __a,
                                                                __m128i __b) {
  return (__m128i)__builtin_shufflevector((__v2di)__a, (__v2di)__b, 1, 2 + 1);
}
# 4433 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_unpacklo_epi8(__m128i __a,
                                                               __m128i __b) {
  return (__m128i)__builtin_shufflevector(
      (__v16qi)__a, (__v16qi)__b, 0, 16 + 0, 1, 16 + 1, 2, 16 + 2, 3, 16 + 3, 4,
      16 + 4, 5, 16 + 5, 6, 16 + 6, 7, 16 + 7);
}
# 4462 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_unpacklo_epi16(__m128i __a,
                                                                __m128i __b) {
  return (__m128i)__builtin_shufflevector((__v8hi)__a, (__v8hi)__b, 0, 8 + 0, 1,
                                          8 + 1, 2, 8 + 2, 3, 8 + 3);
}
# 4485 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_unpacklo_epi32(__m128i __a,
                                                                __m128i __b) {
  return (__m128i)__builtin_shufflevector((__v4si)__a, (__v4si)__b, 0, 4 + 0, 1,
                                          4 + 1);
}
# 4506 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_unpacklo_epi64(__m128i __a,
                                                                __m128i __b) {
  return (__m128i)__builtin_shufflevector((__v2di)__a, (__v2di)__b, 0, 2 + 0);
}
# 4522 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_movepi64_pi64(__m128i __a) {
  return (__m64)__a[0];
}
# 4537 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_movpi64_epi64(__m64 __a) {
  return __extension__(__m128i)(__v2di){(long long)__a, 0};
}
# 4553 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_move_epi64(__m128i __a) {
  return __builtin_shufflevector((__v2di)__a, _mm_setzero_si128(), 0, 2);
}
# 4572 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_unpackhi_pd(__m128d __a,
                                                             __m128d __b) {
  return __builtin_shufflevector((__v2df)__a, (__v2df)__b, 1, 2 + 1);
}
# 4592 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_unpacklo_pd(__m128d __a,
                                                             __m128d __b) {
  return __builtin_shufflevector((__v2df)__a, (__v2df)__b, 0, 2 + 0);
}
# 4610 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_movemask_pd(__m128d __a) {
  return __builtin_ia32_movmskpd((__v2df)__a);
}
# 4656 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_castpd_ps(__m128d __a) {
  return (__m128)__a;
}
# 4671 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_castpd_si128(__m128d __a) {
  return (__m128i)__a;
}
# 4686 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_castps_pd(__m128 __a) {
  return (__m128d)__a;
}
# 4701 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_castps_si128(__m128 __a) {
  return (__m128i)__a;
}
# 4716 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_castsi128_ps(__m128i __a) {
  return (__m128)__a;
}
# 4731 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/emmintrin.h" 3
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_castsi128_pd(__m128i __a) {
  return (__m128d)__a;
}



int main() {
    return 0;
}
