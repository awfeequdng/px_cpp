#include "benchmark/benchmark.h"

#define MCA_START __asm__ volatile("# LLVM-MCA-BEGIN");
#define MCA_END __asm__ volatile("# LLVM-MCA-END");

void BM_add(benchmark::State& state) {
    srand(1);
    const unsigned long N = state.range(0);
    std::vector<unsigned long> v1(N), v2(N);
    for (size_t i = 0; i < N; i++) {
        v1[i] = rand();
        v2[i] = rand();
    }
    auto p1 = v1.data(), p2 = v2.data();
    for (auto _ : state) {
        unsigned long a1, a2;
        for (size_t i = 0; i < N; i++) {
            MCA_START
            a1 += p1[i] + p2[i];
            MCA_END
        }
        benchmark::DoNotOptimize(a1);
        benchmark::DoNotOptimize(a2);
        benchmark::ClobberMemory();
    }
    state.SetItemsProcessed(N * state.iterations());
}

#define ARG ->Arg(1<<22)
BENCHMARK(BM_add) ARG;

BENCHMARK_MAIN();
