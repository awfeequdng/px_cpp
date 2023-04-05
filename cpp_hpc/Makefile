
LIB_SRC = superscalar.cc

SRC = ${LIB_SRC}
CFLAGS =
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

all: release

release:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS}  -DNDEBUG=1

# debug:
# 	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS}


run: all
	./${BIN}

clean:
	rm -rf ${BIN}
