#include <string.h>

extern "C" long write(int, const void *, unsigned long);

void* memcpy(void* dest, const void* src, unsigned long n) {
    write(2, "my own memcpy\n", 16);
    return memmove(dest, src, n);
}
