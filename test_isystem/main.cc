// // #include <test1.hh>
// #include <test2.hh>
// // #include <test4.hh>
// #include <test3.hh>


// # 567 "/usr/include/stdlib.h" 2 3 4
using size_t = unsigned long;

extern "C" {

__attribute__((visibility("default"))) int __attribute__((nothrow)) posix_memalign(
    void **memptr, size_t alignment, size_t size) throw()
    __attribute__((nonnull(1)));
}


// # 1 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mm_malloc.h" 1 3
// # 25 "/fast/home/pxcai/opt/llvm/lib/clang/15.0.0/include/mm_malloc.h" 3
extern "C" int posix_memalign(void **__memptr, size_t __alignment, size_t __size);

int main() {
    // test_isystem();
    return 0;
}
