
LIB_SRC = ThreadStatus.cc ProfileEvents.cc CurrentThread.cc new_delete.cc MemoryTracker.cc MemoryTrackerBlockerInThread.cc CurrentMemoryTracker.cc

SRC = ${LIB_SRC} main.cc

IFLAGS = -I../contrib/jemalloc-cmake/include
CFLAGS = -g -ggdb -std=c++20 -I.. -I../base -DUSE_JEMALLOC -DOS_LINUX

LFLAGS =
# 注意：libcxx libcxxabi一定要放在所有链接库的最前面，不然libcxx会优先使用系统下的库，导致segment fault
# 主要是由于base依赖了libstdc++，是的这个动态库在我们的libcxx和libcxxabi前面，符号就优先从libstdc++中查找了，最终导致segment fault
# LFLAGS += -L../lib/contrib -Wl,--start-group -lcxx -lcxxabi -lgtest -lgbenchmark -lunwind -ljemalloc -Wl,--end-group
LFLAGS +=  -ldl -lpthread
LFLAGS += -L../lib/contrib -rpath ../lib/contrib -lcxx -lcxxabi -lgtest -lgbenchmark -lunwind -ljemalloc
LFLAGS += -L../lib -lbase -rpath ../lib

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