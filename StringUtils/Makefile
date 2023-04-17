
LIB_SRC = StringUtils.cc

LIB_AOBJS = $(subst .cc,.o,$(wildcard *.cc))
LIB_OBJS := $(shell echo $(LIB_AOBJS) | sed 's/\<main.o\>//g')

SRC = main.cc ${LIB_SRC}



IFLAGS =
IFLAGS += -I.. -I../base
IFLAGS += -I../contrib/jemalloc-cmake/include
IFLAGS += -I../contrib/libcxx/include -I../contrib/libcxxabi/include -I../contrib/libunwind/include

CFLAGS =
CFLAGS += ${IFLAGS}
CFLAGS += -O3
# CFLAGS += -g -ggdb
CFLAGS += -std=gnu++2b
CFLAGS += -DUSE_JEMALLOC
CFLAGS += -nodefaultlibs -nostdinc++

# 以下这两种配置方式都正确, 这是通过编译参数传递给链接器的参数，如下两种方式都是正确的
# 如果将参数直接传递给链接器，只能是 --no-undefined, 不能写成-no-undefined
# CFLAGS += -Wl,-no-undefined
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

LFLAGS += -Wl,--start-group -lcxx -lcxxabi -lunwind -ljemalloc -lglibc-compatibility -Wl,--end-group

# LFLAGS += -lgbenchmark -lgtest
LFLAGS += -L../lib/contrib
LFLAGS += -rpath ../lib/contrib

LFLAGS += -ldl -lm
LFLAGS += -lpthread

# -ljemalloc必须放在 -lc的前面。
# 由于-ljemalloc放在前面，调用malloc时优先解析libjemalloc库中的malloc函数，而不是libc中的malloc
# 又由于我们代码中显示的调用了libjemalloc的sallocx函数(在Common/memory.hh中调用)，因此不能使用libc中的malloc函数，不然会报错。
# 还有另外一种解决链接顺序的办法就是：将libjemalloc静态链接到项目当中来，malloc是弱引用，所以最终malloc会使用libjemalloc中的函数
LFLAGS += -lc

CXX = clang++
BIN = strutils


all: debug

%.o: %.cc
	${CXX} ${CFLAGS} $< -c -o $@

release:
	${CXX} ${SRC} -o ${BIN} ${IFLAGS} ${LFLAGS} ${CFLAGS} -DNDEBUG=1

debug:
	${CXX} ${SRC} -o ${BIN} ${IFLAGS} ${LFLAGS} ${CFLAGS}

static: ${LIB_OBJS}
	${AR} qc lib${BIN}.a ${LIB_OBJS}
	mv lib${BIN}.a ../lib

run: all
	./${BIN}

clean:
	rm -rf ${BIN} *.o