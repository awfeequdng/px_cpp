
LIB_SRC = sleep.cc Throttler.cc getThreadId.cc terminalColors.cc StringRef.cc
LIB_AOBJS = $(subst .cc,.o,$(wildcard *.cc))
LIB_OBJS := $(shell echo $(LIB_AOBJS) | sed 's/\<main.o\>//g')

SRC = ${LIB_SRC} main.cc

CFLAGS = -O3
# CFLAGS += -std=c++20
CFLAGS += -std=gnu++2b
CFLAGS += -nostdinc++

CFLAGS += -isystem ../contrib/jemalloc/include
# CFLAGS += -I../contrib/jemalloc/include

CFLAGS += -isystem ../contrib/libcxx/include -isystem../contrib/libcxxabi/include -isystem ../contrib/libunwind/include
CFLAGS += -isystem ../contrib/cityhash102/include
CFLAGS += -DUSE_JEMALLOC


LFLAGS =
LFLAGS += --no-undefined
LFLAGS += -fuse-ld=lld
LFLAGS += -nodefaultlibs
LFLAGS += -L../lib/contrib -rpath ../lib/contrib
LFLAGS += -Wl,--start-group -lcxx  -lcxxabi -lunwind  -lcityhash -Wl,--end-group

# -ljemalloc必须放在 -lc的前面。
# 由于-ljemalloc放在前面，调用malloc时优先解析libjemalloc库中的malloc函数，而不是libc中的malloc
# 又由于我们代码中显示的调用了libjemalloc的sallocx函数(在Common/memory.hh中调用)，因此不能使用libc中的malloc函数，不然会报错。
# 还有另外一种解决链接顺序的办法就是：将libjemalloc静态链接到项目当中来，malloc是弱引用，所以最终malloc会使用libjemalloc中的函数
LFLAGS += -ljemalloc
LFLAGS += -lc
LFLAGS += -lgcc
LFLAGS += -lm -lrt -lpthread -ldl

CXX = clang++
AR = llvm-ar
BIN = base

LINUX="Linux"
DARWIN="Darwin"

ARCH="`uname -s`"

all: debug

release:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS} -DNDEBUG=1

debug:
	# ${CXX} ${SRC} -E ${LFLAGS} ${CFLAGS} > ${BIN}.i
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS}

%.o: %.cc
	${CXX} $(CFLAGS)  -o $@ -c $<


static: ${LIB_OBJS}
	${AR} qc lib${BIN}.a ${LIB_OBJS}
	mv lib${BIN}.a ../lib

run: all
	./${BIN}

clean:
	rm -rf ${BIN} ${BIN}.i *.o