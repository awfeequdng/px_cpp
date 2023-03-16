#include <iostream>
#include <unordered_map>
#include <chrono>

// 对restrict的分析在文章：https://zhuanlan.zhihu.com/p/614432916
int add1(int* a, int* b)
{
    *a = 10;
    *b = 12;
    return *a + *b;
}

int add2(int* __restrict a, int* __restrict b) {
    *a = 10;
    *b = 12;
    return *a + *b;
}

// todo: 这里的计数值应该是没有生效的，add函数的调用应该被优化掉了
// constexpr size_t ITER_COUNT = 100000000;
constexpr size_t ITER_COUNT = 110;

int main() {
    int *a = new int;
    int *b = new int;

    {
        std::chrono::steady_clock::time_point begin = std::chrono::steady_clock::now();
        for (size_t i = 0; i < ITER_COUNT; i++) {
            int c = add2(a, b);
        }
        std::chrono::steady_clock::time_point end = std::chrono::steady_clock::now();
        std::cout << "Time difference of add1 = " << std::chrono::duration_cast<std::chrono::nanoseconds>(end - begin).count() << "[ns]" << std::endl;
    }

    {
        std::chrono::steady_clock::time_point begin = std::chrono::steady_clock::now();
        for (size_t i = 0; i < ITER_COUNT; i++) {
            add1(a, b);
        }
        std::chrono::steady_clock::time_point end = std::chrono::steady_clock::now();
        std::cout << "Time difference of add2 = " << std::chrono::duration_cast<std::chrono::nanoseconds>(end - begin).count() << "[ns]" << std::endl;
    }

    return 0;
}
