
LIB_SRC = sleep.cc Throttler.cc getThreadId.cc terminalColors.cc StringRef.cc

SRC = ${LIB_SRC} main.cc

CFLAGS = -O3
CFLAGS += -std=c++20 -nostdinc++
CFLAGS += -I../contrib/libcxx/include -I../contrib/libcxxabi/include -I../contrib/libunwind/include
CFLAGS += -I../contrib/cityhash102/include
CFALGS +=-Wl,-no-undefined
CFLAGS += -DUSE_JEMALLOC


LFLAGS =
LFLAGS += -fuse-ld=lld
LFLAGS += -nodefaultlibs
LFLAGS += -L../lib/contrib -rpath ../lib/contrib  -lcxx  -lcxxabi -lunwind  -lcityhash
LFLAGS +=

# -ljemalloc必须放在 -lc的前面。
# 由于-ljemalloc放在前面，调用malloc时优先解析libjemalloc库中的malloc函数，而不是libc中的malloc
# 又由于我们代码中显示的调用了libjemalloc的sallocx函数(在Common/memory.hh中调用)，因此不能使用libc中的malloc函数，不然会报错。
# 还有另外一种解决链接顺序的办法就是：将libjemalloc静态链接到项目当中来，malloc是弱引用，所以最终malloc会使用libjemalloc中的函数
LFLAGS += -ljemalloc
LFLAGS += -lc
LFLAGS += -lgcc
LFLAGS += -lm -lrt -lpthread -ldl

CXX = clang++
BIN = base

LINUX="Linux"
DARWIN="Darwin"

ARCH="`uname -s`"

all: debug

release:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS} -DNDEBUG=1

debug:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS}


so:
	${CXX} ${LIB_SRC} -o lib${BIN}.so -shared -fPIC ${LFLAGS} ${CFLAGS} -DNDEBUG=1
	mv lib${BIN}.so ../lib

run: all
	./${BIN}

clean:
	rm -rf ${BIN}