
LIB_SRC = ThreadStatus.cc ProfileEvents.cc CurrentThread.cc new_delete.cc MemoryTracker.cc MemoryTrackerBlockerInThread.cc CurrentMemoryTracker.cc

SRC = ${LIB_SRC} main.cc

IFLAGS = -I../contrib/jemalloc-cmake/include
CFLAGS = -g -ggdb -std=c++20 -I.. -I../base -DUSE_JEMALLOC -DOS_LINUX
LFLAGS = -ldl -L../lib -lbase -rpath ../lib -lpthread -L../lib/contrib -Wl,--start-group -lcxx -lcxxabi -lgtest -lgbenchmark -lunwind -ljemalloc -Wl,--end-group
CXX = clang++
BIN = common

all: debug

release:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS} ${IFLAGS} -DNDEBUG=1

debug:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS} ${IFLAGS}

so:
	${CXX} ${LIB_SRC} -o lib${BIN}.so -shared -fPIC ${LFLAGS} ${CFLAGS} ${IFLAGS} -DNDEBUG=1
	mv lib${BIN}.so ../lib

run: all
	./${BIN}

clean:
	rm -rf ${BIN}