
LIB_SRC = ReadBufferFromFileBase.cc ReadBufferFromFileDescriptor.cc ReadBufferFromIStream.cc ReadBufferFromFile.cc ReadHelpers.cc ReadBufferFromMemory.cc ReadBufferFromFileDecorator.cc
LIB_SRC += LimitReadBuffer.cc
LIB_SRC += WriteBufferFromFileBase.cc WriteBufferFromFileDescriptor.cc WriteBufferFromFile.cc

SRC = ${LIB_SRC} main.cc


IFLAGS =
# IFLAGS += -I.. -I../base
IFLAGS += -I../contrib/jemalloc-cmake/include
IFLAGS += -I../contrib/libcxx/include -I../contrib/libcxxabi/include -I../contrib/libunwind/include

CFALGS =
# CFALGS = -O3
# CFLAGS += -g -ggdb
CFLAGS += -std=c++20
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

LFLAGS += -lcxx -lcxxabi  -lunwind
# LFLAGS += -lgbenchmark -lgtest
LFLAGS += -L../lib/contrib
LFLAGS += -rpath ../lib/contrib

LFLAGS += -ldl
LFLAGS += -lpthread

# -ljemalloc必须放在 -lc的前面。
# 由于-ljemalloc放在前面，调用malloc时优先解析libjemalloc库中的malloc函数，而不是libc中的malloc
# 又由于我们代码中显示的调用了libjemalloc的sallocx函数(在Common/memory.hh中调用)，因此不能使用libc中的malloc函数，不然会报错。
# 还有另外一种解决链接顺序的办法就是：将libjemalloc静态链接到项目当中来，malloc是弱引用，所以最终malloc会使用libjemalloc中的函数
LFLAGS += -ljemalloc
LFLAGS += -lc


IFLAGS += -I../
LFLAGS += -L../lib -rpath ../lib -lallocator -lbase

CXX = clang++
BIN = read_write_buffer

all: debug

release:
	${CXX} ${SRC} -o ${BIN} ${IFLAGS} ${LFLAGS} ${CFLAGS} -DNDEBUG=1

debug:
	${CXX} ${SRC} -o ${BIN} ${IFLAGS} ${LFLAGS} ${CFLAGS}

so:
	${CXX} ${LIB_SRC} -o librwbuf.so -shared -fPIC ${IFLAGS} ${LFLAGS} ${CFLAGS} -DNDEBUG=1
	mv librwbuf.so ../lib

run: all
	./${BIN}

clean:
	rm -rf ${BIN}