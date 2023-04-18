#include <iostream>
#include <string.h>

int main() {
    char buf1[100] = {"hello world"};
    char buf2[100] = {"I'm pxc"};

    memcpy(buf1, buf2, sizeof(buf1));

    return 0;
}
