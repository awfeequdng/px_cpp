
LIB_SRC = superscalar.cc
SRC = ${LIB_SRC}

EXECS = $(subst .cc,,$(wildcard *.cc))

CFLAGS = -O3
CFLAGS += -I../contrib/libcxx/include -I../contrib/libcxxabi/include -I../contrib/libunwind/include
CFLAGS += -I../contrib/google-benchmark/include
CFLAGS += -std=c++20 -nostdinc++
# CFALGS +=-Wl,-no-undefined
# CFLAGS += -lgcc

LFLAGS =
# LFLAGS += -fuse-ld=lld
LFLAGS += -nodefaultlibs
LFLAGS += -L../lib/contrib -rpath ../lib/contrib  -lcxx  -lcxxabi -lgbenchmark -lgbenchmark_main -lunwind
LFLAGS +=
LFLAGS +=  -lc -lm -lrt -lpthread -ldl

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

