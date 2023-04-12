
LIB_SRC = superscalar.cc
SRC = ${LIB_SRC}

EXECS = $(subst .cc,,$(wildcard *.cc))

CFLAGS = -O3
CFLAGS += -I../contrib/libcxx/include -I../contrib/libcxxabi/include -I../contrib/libunwind/include
CFLAGS += -I../contrib/google-benchmark/include
CFLAGS += -std=c++20 -nostdinc++
CFALGS += -Wl,-no-undefined
# CFLAGS += -lgcc
CFLAGS += -DUSE_JEMALLOC

LFLAGS =
# LFLAGS += -fuse-ld=lld
LFLAGS += -nodefaultlibs
LFLAGS += -L../lib/contrib -rpath ../lib/contrib  -lcxx  -lcxxabi -lgbenchmark -lgbenchmark_main -lunwind
LFLAGS +=
LFLAGS += -lm -lrt -lpthread -ldl
# -ljemalloc必须放在 -lc的前面。
# 由于-ljemalloc放在前面，调用malloc时优先解析libjemalloc库中的malloc函数，而不是libc中的malloc
# 又由于我们代码中显示的调用了libjemalloc的sallocx函数(在Common/memory.hh中调用)，因此不能使用libc中的malloc函数，不然会报错。
# 还有另外一种解决链接顺序的办法就是：将libjemalloc静态链接到项目当中来，malloc是弱引用，所以最终malloc会使用libjemalloc中的函数
LFLAGS += -ljemalloc
LFLAGS += -lc

CXX = clang++
BIN = cpp_hpc

all: ${EXECS}

%: %.cc
	${CXX} $< -o $@ ${LFLAGS} ${CFLAGS}  -DNDEBUG=1


run: ${EXECS}
	@echo "run :" $^
	@for e in ${EXECS}; do ./$$e; done

test_mca:
	${CXX} -mavx2 -mllvm -x86-asm-syntax=intel -S mca_test.cc ${LFLAGS} ${CFLAGS} -o - | llvm-mca -mcpu=btver2 -timeline

perf: perf_branch1
	perf stat ./perf_branch1

valgrind: perf_branch1
	valgrind --tool=cachegrind ./perf_branch1
#   cg_annotate cachegrind.out.*

clean:
	rm -rf ${BIN} ${EXECS} cachegrind.out.*

