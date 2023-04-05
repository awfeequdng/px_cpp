#include "benchmark/benchmark.h"

#include <stdlib.h>
#include <time.h>

#define MCA_START __asm__ volatile("# LLVM-MCA-BEGIN");
#define MCA_END __asm__ volatile("# LLVM-MCA-END");

void BM_ptr_add(benchmark::State& state) {
    srand(1);
    const unsigned int N = state.range(0);
    std::vector<unsigned long> v1(N), v2(N);
    auto d1 = v1.data();
    auto d2 = v2.data();

    for (int i = 0; i < N; i++) {
        d1[i] = rand();
        d2[i] = rand();
    }
    for (auto _ : state) {
        unsigned long a1, a2;
        for (int i = 0; i < N; i++) {
            a1 += d1[i] + d2[i];
        }
        benchmark::DoNotOptimize(a1);
        benchmark::DoNotOptimize(a2);
        benchmark::ClobberMemory();
    }
    state.SetItemsProcessed(N * state.iterations());
}

void BM_vector_add(benchmark::State& state) {
    srand(1);
    const unsigned int N = state.range(0);
    std::vector<unsigned long> v1(N), v2(N);
    auto d1 = v1.data();
    auto d2 = v2.data();

    for (int i = 0; i < N; i++) {
        d1[i] = rand();
        d2[i] = rand();
    }
    for (auto _ : state) {
        unsigned long a1, a2;
        for (int i = 0; i < N; i++) {
            a1 += v1[i] + v2[i];
        }
        benchmark::DoNotOptimize(a1);
        benchmark::DoNotOptimize(a2);
        benchmark::ClobberMemory();
    }
    state.SetItemsProcessed(N * state.iterations());
}

void BM_ptr_multiply(benchmark::State& state) {
    // srand(1);
    srand(time(NULL));
    const unsigned long N = state.range(0);
    std::vector<unsigned long> v1(N), v2(N);
    for (int i = 0; i < N; i++) {
        v1[i] = rand();
        v2[i] = rand();
    }
    auto p1 = v1.data();
    auto p2 = v2.data();

    for (auto _ : state) {
        unsigned long a1, a2 = 0;
        for (size_t i = 0; i < N; i++) {
            a1 += p1[i] * p2[i];
        }
        benchmark::DoNotOptimize(a1);
        benchmark::DoNotOptimize(a2);
        benchmark::ClobberMemory();
    }
    state.SetItemsProcessed(N * state.iterations());
}

void BM_vector_multiply(benchmark::State& state) {
    const unsigned long N = state.range(0);
    // srand(time(NULL));
    srand(1);
    std::vector<unsigned long> v1(N), v2(N);
    for (size_t i = 0; i < N; i++) {
        v1[i] = rand();
        v2[i] = rand();
    }
    auto p1 = v1.data();
    auto p2 = v2.data();
    for (auto _ : state) {
        unsigned long a1 = 0, a2 = 0;
        for (size_t i = 0; i < N; i++) {
            a1 += v1[i] * v2[i];
        }
        benchmark::DoNotOptimize(a1);
        benchmark::DoNotOptimize(a2);
        benchmark::ClobberMemory();
    }
    state.SetItemsProcessed(N * state.iterations());
}


void BM_divide(benchmark::State& state) {
    // srand(1);
    srand(time(NULL));
    const unsigned long N = state.range(0);
    std::vector<unsigned long> v1(N), v2(N);
    for (int i = 0; i < N; i++) {
        v1[i] = rand();
        v2[i] = rand() + 1;
    }
    auto p1 = v1.data();
    auto p2 = v2.data();

    for (auto _ : state) {
        unsigned long a1, a2 = 0;
        for (size_t i = 0; i < N; i++) {
            a1 += p1[i] / p2[i];
        }
        benchmark::DoNotOptimize(a1);
        benchmark::DoNotOptimize(a2);
        benchmark::ClobberMemory();
    }
    state.SetItemsProcessed(N * state.iterations());
}

void BM_add_multiply(benchmark::State& state) {
    // srand(1);
    srand(time(NULL));
    const unsigned long N = state.range(0);
    std::vector<unsigned long> v1(N), v2(N);
    for (int i = 0; i < N; i++) {
        v1[i] = rand();
        v2[i] = rand() + 1;
    }
    auto p1 = v1.data();
    auto p2 = v2.data();

    for (auto _ : state) {
        unsigned long a1, a2 = 0;
        for (size_t i = 0; i < N; i++) {
            a1 += p1[i] + p2[i];
            a1 += p1[i] * p2[i];
            a1 += p1[i] - p2[i];
        }
        benchmark::DoNotOptimize(a1);
        benchmark::DoNotOptimize(a2);
        benchmark::ClobberMemory();
    }
    state.SetItemsProcessed(N * state.iterations());
}

void BM_add_sub_multiply(benchmark::State& state) {
    // srand(1);
    srand(time(NULL));
    const unsigned long N = state.range(0);
    std::vector<unsigned long> v1(N), v2(N);
    for (int i = 0; i < N; i++) {
        v1[i] = rand();
        v2[i] = rand() + 1;
    }
    auto p1 = v1.data();
    auto p2 = v2.data();

    for (auto _ : state) {
        unsigned long a1, a2, a3;
        for (size_t i = 0; i < N; i++) {
            a1 += p1[i] + p2[i];
            a2 += p1[i] * p2[i];
            a3 += p1[i] - p2[i];
        }
        benchmark::DoNotOptimize(a1);
        benchmark::DoNotOptimize(a2);
        benchmark::DoNotOptimize(a3);
        benchmark::ClobberMemory();
    }
    state.SetItemsProcessed(N * state.iterations());
}


void BM_add_multiply2(benchmark::State& state) {
    srand(1);
    const unsigned int N = state.range(0);
    std::vector<unsigned long> v1(N), v2(N);
    std::vector<unsigned long> v3(N), v4(N);
    for (size_t i = 0; i < N; ++i) {
        v1[i] = rand();
        v2[i] = rand();
        v3[i] = rand();
        v4[i] = rand();
    }
    unsigned long* p1 = v1.data();
    unsigned long* p2 = v2.data();
    unsigned long* p3 = v3.data();
    unsigned long* p4 = v4.data();
    for (auto _ : state) {
        unsigned long a1 = 0, a2 = 0;
        for (size_t i = 0; i < N; ++i) {
            a1 += p1[i] + p2[i];
            a2 += p3[i] * p4[i];
        }
        benchmark::DoNotOptimize(a1);
        benchmark::DoNotOptimize(a2);
        benchmark::ClobberMemory();
    }
    state.SetItemsProcessed(N*state.iterations());
    // state.SetBytesProcessed(N*sizeof(unsigned long)*state.iterations());
}

void BM_add2_multiply_sub_shift(benchmark::State& state) {
    srand(1);
    const unsigned int N = state.range(0);
    std::vector<unsigned long> v1(N), v2(N);
    for (size_t i = 0; i < N; ++i) {
        v1[i] = rand();
        v2[i] = rand();
    }
    unsigned long* p1 = v1.data();
    unsigned long* p2 = v2.data();
    for (auto _ : state) {
        unsigned long a1 = 0, a2 = 0;
        unsigned long a3 = 0, a4 = 0;
        for (size_t i = 0; i < N; ++i) {
            a1 += p1[i] + p2[i];
            a2 += p1[i] * p2[i];
            a3 += p1[i] << 2;
            a4 += p2[i] - p1[i];
        }
        benchmark::DoNotOptimize(a1);
        benchmark::DoNotOptimize(a2);
        benchmark::DoNotOptimize(a3);
        benchmark::DoNotOptimize(a4);
        benchmark::ClobberMemory();
    }
    state.SetItemsProcessed(N*state.iterations());
    //state.SetBytesProcessed(N*sizeof(unsigned long)*state.iterations());
}

void BM_instructions1(benchmark::State& state) {
    srand(1);
    const unsigned int N = state.range(0);
    std::vector<unsigned long> v1(N), v2(N);
    for (size_t i = 0; i < N; ++i) {
        v1[i] = rand();
        v2[i] = rand();
    }
    unsigned long* p1 = v1.data();
    unsigned long* p2 = v2.data();
    for (auto _ : state) {
        unsigned long a1 = 0, a2 = 0;
        unsigned long a3 = 0, a4 = 0;
        unsigned long a5 = 0, a6 = 0;
        for (size_t i = 0; i < N; ++i) {
            a1 += p1[i] + p2[i];
            a2 += p1[i] * p2[i];
            a3 += p1[i] << 2;
            a4 += p2[i] - p1[i];
            a5 += p2[i] << 1;
            a6 += (p2[i] - 3);
        }
        benchmark::DoNotOptimize(a1);
        benchmark::DoNotOptimize(a2);
        benchmark::DoNotOptimize(a3);
        benchmark::DoNotOptimize(a4);
        benchmark::DoNotOptimize(a5);
        benchmark::DoNotOptimize(a6);
        benchmark::ClobberMemory();
    }
    state.SetItemsProcessed(N*state.iterations());
    //state.SetBytesProcessed(N*sizeof(unsigned long)*state.iterations());
}

void BM_instructions2(benchmark::State& state) {
    srand(1);
    const unsigned int N = state.range(0);
    std::vector<unsigned long> v1(N), v2(N);
    for (size_t i = 0; i < N; ++i) {
        v1[i] = rand();
        v2[i] = rand();
    }
    unsigned long* p1 = v1.data();
    unsigned long* p2 = v2.data();
    for (auto _ : state) {
        unsigned long a1 = 0, a2 = 0;
        unsigned long a3 = 0, a4 = 0;
        unsigned long a5 = 0, a6 = 0;
        for (size_t i = 0; i < N; ++i) {
            a1 += p1[i] + p2[i];
            a2 += p1[i] * p2[i];
            a3 += p1[i] << 2;
            a4 += p2[i] - p1[i];
            a5 += (p2[i] << 1)*p2[i];
            a6 += (p2[i] - 3)*p1[i];
        }
        benchmark::DoNotOptimize(a1);
        benchmark::DoNotOptimize(a2);
        benchmark::DoNotOptimize(a3);
        benchmark::DoNotOptimize(a4);
        benchmark::DoNotOptimize(a5);
        benchmark::DoNotOptimize(a6);
        benchmark::ClobberMemory();
    }
    state.SetItemsProcessed(N*state.iterations());
    //state.SetBytesProcessed(N*sizeof(unsigned long)*state.iterations());
}

#define ARG ->Arg(1 << 22)
BENCHMARK(BM_ptr_add) ARG;
BENCHMARK(BM_vector_add) ARG;
BENCHMARK(BM_ptr_multiply) ARG;
BENCHMARK(BM_vector_multiply) ARG;
BENCHMARK(BM_divide) ARG;
BENCHMARK(BM_add_multiply) ARG;
BENCHMARK(BM_add_sub_multiply) ARG;
BENCHMARK(BM_add_multiply2) ARG;
BENCHMARK(BM_add2_multiply_sub_shift) ARG;
BENCHMARK(BM_instructions1) ARG;
BENCHMARK(BM_instructions2) ARG;

BENCHMARK_MAIN();
