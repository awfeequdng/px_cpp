#include "benchmark/benchmark.h"

void BM_branch(benchmark::State& state) {
    auto const N = state.range(0);
    std::vector<unsigned long> v1(N), v2(N);
    srand(1);
    for (auto i = 0; i < N; i++) {
        v1[i] = rand();
        v2[i] = rand();
    }
    for (auto _ : state) {
        unsigned long a1, a2;
        for (auto i = 0; i < N; i++) {
            a1 += v1[i] > v2[i] ? v1[i] : v2[i];
        }
        benchmark::DoNotOptimize(a1);
        benchmark::DoNotOptimize(a2);
        benchmark::ClobberMemory();
    }

    state.SetItemsProcessed(N * state.iterations());
}

void BM_branch_no_cmove(benchmark::State& state) {
    auto const N = state.range(0);
    std::vector<unsigned long> v1(N), v2(N);
    srand(1);
    for (auto i = 0; i < N; i++) {
        v1[i] = rand();
        v2[i] = rand();
    }
    for (auto _ : state) {
        unsigned long a1, a2;
        for (auto i = 0; i < N; i++) {
            if (v1[i] > v2[i]) {
                a1 += v1[i];
            } else {
                a1 *= v2[i];
            }
        }
        benchmark::DoNotOptimize(a1);
        benchmark::DoNotOptimize(a2);
        benchmark::ClobberMemory();
    }

    state.SetItemsProcessed(N * state.iterations());
}

void BM_branch_have_cmove_add(benchmark::State& state) {
    auto const N = state.range(0);
    std::vector<unsigned long> v1(N), v2(N);
    srand(1);
    for (auto i = 0; i < N; i++) {
        v1[i] = rand();
        v2[i] = rand();
    }
    for (auto _ : state) {
        unsigned long a1, a2;
        for (auto i = 0; i < N; i++) {
            if (v1[i] > v2[i]) {
                a1 += v1[i];
            } else {
                a1 += v2[i];
            }
        }
        benchmark::DoNotOptimize(a1);
        benchmark::DoNotOptimize(a2);
        benchmark::ClobberMemory();
    }

    state.SetItemsProcessed(N * state.iterations());
}

void BM_branch_have_cmove_mul(benchmark::State& state) {
    auto const N = state.range(0);
    std::vector<unsigned long> v1(N), v2(N);
    srand(1);
    for (auto i = 0; i < N; i++) {
        v1[i] = rand();
        v2[i] = rand();
    }
    for (auto _ : state) {
        unsigned long a1, a2;
        for (auto i = 0; i < N; i++) {
            if (v1[i] > v2[i]) {
                a1 *= v1[i];
            } else {
                a1 *= v2[i];
            }
        }
        benchmark::DoNotOptimize(a1);
        benchmark::DoNotOptimize(a2);
        benchmark::ClobberMemory();
    }

    state.SetItemsProcessed(N * state.iterations());
}

void BM_branch_not_predicted(benchmark::State& state) {
    auto const N = state.range(0);
    std::vector<unsigned long> v1(N), v2(N);
    std::vector<int> c1(N);
    srand(1);
    for (auto i = 0; i < N; i++) {
        v1[i] = rand();
        v2[i] = rand();
        // c1[i] = rand() & 1;
        c1[i] = rand() & 1;
    }
    for (auto _ : state) {
        unsigned long a1, a2;
        for (auto i = 0; i < N; i++) {
            if (c1[i]) {
                a1 += v1[i];
            } else {
                a1 *= v2[i];
            }
        }
        benchmark::DoNotOptimize(a1);
        benchmark::DoNotOptimize(a2);
        benchmark::ClobberMemory();
    }

    state.SetItemsProcessed(N * state.iterations());
}

void BM_branch_predicted(benchmark::State& state) {
    auto const N = state.range(0);
    std::vector<unsigned long> v1(N), v2(N);
    std::vector<int> c1(N);
    srand(1);
    for (auto i = 0; i < N; i++) {
        v1[i] = rand();
        v2[i] = rand();
        // c1[i] = rand() & 1;
        c1[i] = rand() > 0;
    }
    for (auto _ : state) {
        unsigned long a1, a2;
        for (auto i = 0; i < N; i++) {
            if (c1[i]) {
                a1 += v1[i];
            } else {
                a1 *= v2[i];
            }
        }
        benchmark::DoNotOptimize(a1);
        benchmark::DoNotOptimize(a2);
        benchmark::ClobberMemory();
    }

    state.SetItemsProcessed(N * state.iterations());
}

void BM_no_branch(benchmark::State& state) {
    auto const N = state.range(0);
    std::vector<unsigned long> v1(N), v2(N);
    std::vector<int> c1(N);
    srand(1);
    for (auto i = 0; i < N; i++) {
        v1[i] = rand();
        v2[i] = rand();
        // c1[i] = rand() & 1;
        c1[i] = rand() > 0;
    }
    for (auto _ : state) {
        unsigned long a1, a2;
        for (auto i = 0; i < N; i++) {
            a1 += v1[i];
        }
        benchmark::DoNotOptimize(a1);
        benchmark::DoNotOptimize(a2);
        benchmark::ClobberMemory();
    }

    state.SetItemsProcessed(N * state.iterations());
}


#define ARG ->Arg(1<<22)

BENCHMARK(BM_branch) ARG;
BENCHMARK(BM_branch_no_cmove) ARG;
BENCHMARK(BM_branch_have_cmove_add) ARG;
BENCHMARK(BM_branch_have_cmove_mul) ARG;
BENCHMARK(BM_branch_not_predicted) ARG;
BENCHMARK(BM_branch_predicted) ARG;
BENCHMARK(BM_no_branch) ARG;

BENCHMARK_MAIN();
