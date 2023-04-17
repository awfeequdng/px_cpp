
LIB_SRC = ThreadStatus.cc ProfileEvents.cc CurrentThread.cc new_delete.cc MemoryTracker.cc MemoryTrackerBlockerInThread.cc CurrentMemoryTracker.cc
LIB_SRC += Allocator.cc mremap.cc

LIB_AOBJS = $(subst .cc,.o,$(wildcard *.cc))
LIB_OBJS := $(shell echo $(LIB_AOBJS) | sed 's/\<main.o\>//g')

# LIB_OBJS = $(subst *.cc,*.o,$(LIB_SRC))

SRC = ${LIB_SRC} main.cc

IFLAGS =
# IFLAGS += -I../contrib/libcxx/include -I../contrib/libcxxabi/include -I../contrib/libunwind/include
# IFLAGS += -I.. -I../base
# IFLAGS += -I../contrib/jemalloc-cmake/include
# IFLAGS += -I../contrib/jemalloc/include
# IFLAGS += -I../contrib/build/jemalloc-cmake/include_linux_x86_64/jemalloc/internal
IFLAGS += -isystem ../contrib/libcxx/include -isystem../contrib/libcxxabi/include -isystem../contrib/libunwind/include
IFLAGS += -I.. -I../base
IFLAGS += -isystem../contrib/jemalloc-cmake/include
IFLAGS += -isystem../contrib/jemalloc/include
# IFLAGS += -isystem../contrib/build/jemalloc-cmake/include_linux_x86_64/jemalloc/internal


CFLAGS =
CFLAGS += ${IFLAGS}

# CFLAGS += -std=gnu++23
CFLAGS += -std=gnu++2b
CFLAGS += -nostdinc++
CFALGS += -O3
# CFLAGS += -g -ggdb
CFLAGS += -DUSE_JEMALLOC -DOS_LINUX

# 以下这两种配置方式都正确, 这是通过编译参数传递给链接器的参数，如下两种方式都是正确的
# 如果将参数直接传递给链接器，只能是 --no-undefined, 不能写成-no-undefined
# CFLAGS += -Wl,--no-undefined
# CFLAG += -Wl,--unresolved-symbols=ignore-all
# CFLAG += -Wl,--unresolved-symbols=report-all
# CFLAG += -Wl,--unresolved-symbols=ignore-in-shared-libs
# CFLAG += -Wl,--unresolved-symbols=ignore-in-object-files
# CFLAGS += -Wl,--warn-unresolved-symbols

# CFLAGS += -Wl,--allow-shlib-undefined
# CFLAGS += -Wl,--no-allow-shlib-undefined

LFLAGS =
LFLAGS += --no-undefined
LFLAGS += -nodefaultlibs -nostdinc++
# LFLAGS +=  -ldl

LFLAGS += -Wl,--start-group -lcxx -lcxxabi  -lunwind -lglibc-compatibility -lbase -ljemalloc -lc -lm -ldl -Wl,--end-group
# LFLAGS += -lgbenchmark -lgtest
LFLAGS += -L../lib/contrib
LFLAGS +=-rpath ../lib/contrib

LFLAGS += -L../lib -rpath ../lib

# -ljemalloc必须放在 -lc的前面。
# 由于-ljemalloc放在前面，调用malloc时优先解析libjemalloc库中的malloc函数，而不是libc中的malloc
# 又由于我们代码中显示的调用了libjemalloc的sallocx函数(在Common/memory.hh中调用)，因此不能使用libc中的malloc函数，不然会报错。
# 还有另外一种解决链接顺序的办法就是：将libjemalloc静态链接到项目当中来，malloc是弱引用，所以最终malloc会使用libjemalloc中的函数

LFLAGS += -lpthread

CXX = clang++
BIN = common

all: debug

%.o: %.cc
	$(CXX) ${CFLAGS} $< -c -o $@

release:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS} ${IFLAGS} -DNDEBUG=1

debug:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS} ${IFLAGS}

# so:
# 	${CXX} ${LIB_SRC} -o lib${BIN}.so -shared -fPIC ${LFLAGS} ${CFLAGS} ${IFLAGS} -DNDEBUG=1
# 	mv lib${BIN}.so ../lib

static: ${LIB_OBJS}
	$(AR) qc lib${BIN}.a ${LIB_OBJS}
	mv lib${BIN}.a ../lib


run: all
	./${BIN}

clean:
	rm -rf ${BIN} *.o