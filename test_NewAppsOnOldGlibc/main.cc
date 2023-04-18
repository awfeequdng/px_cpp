#include <iostream>
#include <string.h>

// 测试思路来源于这篇文章：
// http://www.lightofdawn.org/wiki/wiki.cgi/NewAppsOnOldGlibc

int main() {
    char buf1[100] = {"hello world"};
    char buf2[100] = {"I'm pxc"};

    memcpy(buf1, buf2, sizeof(buf1));

    return 0;
}
