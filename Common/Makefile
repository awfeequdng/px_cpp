
LIB_SRC = ThreadStatus.cc ProfileEvents.cc CurrentThread.cc new_delete.cc MemoryTracker.cc MemoryTrackerBlockerInThread.cc CurrentMemoryTracker.cc

SRC = ${LIB_SRC} main.cc

IFLAGS =
IFLAGS += -I.. -I../base
IFLAGS += -I../contrib/jemalloc-cmake/include
IFLAGS += -I../contrib/libcxx/include -I../contrib/libcxxabi/include -I../contrib/libunwind/include

CFALGS =
# CFALGS = -O3
# CFLAGS += -g -ggdb
CFLAGS += -std=c++20   -DOS_LINUX
CFLAGS += -DUSE_JEMALLOC

# 以下这两种配置方式都正确, 这是通过编译参数传递给链接器的参数，如下两种方式都是正确的
# 如果将参数直接传递给链接器，只能是 --no-undefined, 不能写成-no-undefined
CFLAGS += -Wl,-no-undefined
# CFLAGS += -Wl,--no-undefined
# CFLAG += -Wl,--unresolved-symbols=ignore-all
# CFLAG += -Wl,--unresolved-symbols=report-all
# CFLAG += -Wl,--unresolved-symbols=ignore-in-shared-libs
# CFLAG += -Wl,--unresolved-symbols=ignore-in-object-files
# CFLAGS += -Wl,--warn-unresolved-symbols

# CFLAGS += -Wl,--allow-shlib-undefined
# CFLAGS += -Wl,--no-allow-shlib-undefined

LFLAGS =
# LFLAGS += --no-undefined
LFLAGS += -nodefaultlibs -nostdinc++
# LFLAGS +=  -ldl

LFLAGS += -lcxx -lcxxabi  -lunwind
LFLAGS += -ljemalloc
# LFLAGS += -lgbenchmark -lgtest
LFLAGS += -L../lib/contrib
LFLAGS +=-rpath ../lib/contrib

LFLAGS += -L../lib
LFLAGS += -lbase -rpath ../lib

LFLAGS += -lpthread -lc

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