
SRC = main.cc

IFLAGS =
IFLAGS += -I.. -I../base
IFLAGS += -I../contrib/jemalloc-cmake/include
IFLAGS += -I../contrib/libcxx/include -I../contrib/libcxxabi/include -I../contrib/libunwind/include

CFLAGS =
CFLAGS = -g -ggdb -std=c++20
CFLAGS += -DUSE_JEMALLOC

LFLAGS =
LFLAGS += -nodefaultlibs -nostdinc++
LFLAGS += -lcxx -lcxxabi  -lunwind
LFLAGS += -L../lib/contrib
LFLAGS +=-rpath ../lib/contrib

# -ljemalloc 必须放在-lc的前面，否则sallocx的调用会报错
LFLAGS += -lc
LFLAGS += -ljemalloc

CXX = clang++
BIN = test_jemalloc

all:
	${CXX} ${SRC} -o ${BIN} ${IFLAGS} ${LFLAGS} ${CFLAGS} -DNDEBUG=1

run: clean all
	./${BIN}

clean:
	rm -rf ${BIN}