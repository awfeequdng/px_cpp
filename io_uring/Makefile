
LIB_SRC =
SRC = ${LIB_SRC} main.cc

# CFLAGS = -O3
CFLAGS += -I../contrib/libcxx/include -I../contrib/libcxxabi/include -I../contrib/libunwind/include
CFLAGS += -I../contrib/google-benchmark/include
CFLAGS += -I../contrib/liburing/src/include -I../contrib/build/liburing/src/include -I../contrib/build/liburing/src/include-compat
CFLAGS += -std=c++20 -nostdinc++
CFALGS +=-Wl,-no-undefined
# CFLAGS += -lgcc

LFLAGS =
# LFLAGS += -fuse-ld=lld
# LFLAGS += -nodefaultlibs
LFLAGS += -L../lib/contrib -rpath ../lib/contrib
# LFLAGS += -lcxx  -lcxxabi -lgbenchmark -lgbenchmark_main -lunwind
# LFLAGS += -lliburing
LFLAGS += -luring
# LFLAGS +=  -lc -lm -lrt -lpthread -ldl

CXX = clang++
BIN = io_uring

all: debug

release:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS} -DNDEBUG=1

debug:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS}


run: all
	./${BIN}

clean:
	rm -rf ${BIN}
