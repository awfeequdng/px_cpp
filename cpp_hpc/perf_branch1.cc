#include "benchmark/benchmark.h"


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
#define ARG ->Arg(1<<22)

BENCHMARK(BM_branch_not_predicted) ARG;
BENCHMARK_MAIN();
