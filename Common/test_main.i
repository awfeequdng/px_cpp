# 1 "test_main.cc"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 447 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "test_main.cc" 2

// # 1 "." 1 3
// # 1 "../contrib/jemalloc-cmake/include/jemalloc/jemalloc.h" 1 3

extern "C" {

typedef long unsigned int size_t;

extern "C" {

extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
     throw () __attribute__ ((__nonnull__ (1))) ;
}

__attribute__((visibility("default"))) int __attribute__((nothrow)) posix_memalign(
    void **memptr, size_t alignment, size_t size) throw()
    __attribute__((nonnull(1)));

}

extern "C" int posix_memalign(void **__memptr, size_t __alignment, size_t __size);

int main() {
    return 0;
}
