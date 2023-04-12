#include "StringRef.hh"
#include <string_view>

#include <benchmark/benchmark.h>

void BM_cmp_StringRef(benchmark::State& state) {
    // const unsigned long N = state.range(0);
    const unsigned long N = 1UL << 0x1b;
    char *buf1 = new char[N];
    char *buf2 = new char[N];
    char *buf3 = new char[N];

    srand(1);
    for (unsigned i = 0; i < N; i++) {
        buf1[i] = rand();
        buf2[i] = buf1[i];
        buf3[i] = rand();
    }

    unsigned cnt = 1;
    for (auto _ : state) {
        StringRef ref1(buf1);
        StringRef ref2(buf1);
        // int res = (ref1 == ref2);
        int res1 = (ref1 < ref2);
        // benchmark::DoNotOptimize(res);
        benchmark::DoNotOptimize(res1);
        benchmark::DoNotOptimize(ref1);
        benchmark::DoNotOptimize(ref2);
        benchmark::ClobberMemory();
        cnt++;
        buf1[N-cnt] = char(cnt);
        buf2[N-cnt] = buf1[N - cnt] - buf3[N - cnt] ;
    }
    benchmark::DoNotOptimize(buf1);
    benchmark::DoNotOptimize(buf2);

    state.SetItemsProcessed(2*N*state.iterations());
    delete []buf1;
    delete []buf2;
}

void BM_cmp_string_view(benchmark::State& state) {

    for (auto _ : state) {

    }

}

void BM_cmp_string(benchmark::State& state) {

    for (auto _ : state) {

    }
}

#define ARG ->Arg(1UL<<0x16)
BENCHMARK(BM_cmp_StringRef) ARG;
BENCHMARK(BM_cmp_string_view) ARG;
BENCHMARK(BM_cmp_string) ARG;

BENCHMARK_MAIN();

