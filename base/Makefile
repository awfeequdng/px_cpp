
LIB_SRC = sleep.cc Throttler.cc getThreadId.cc terminalColors.cc StringRef.cc

SRC = ${LIB_SRC} main.cc

CFLAGS = -O3
CFLAGS += -std=c++20 -nostdinc++
CFLAGS += -I../contrib/libcxx/include -I../contrib/libcxxabi/include -I../contrib/libunwind/include
CFLAGS += -I../contrib/cityhash102/include
CFALGS +=-Wl,-no-undefined

LFLAGS =
LFLAGS += -fuse-ld=lld
LFLAGS += -nodefaultlibs
LFLAGS += -L../lib/contrib -rpath ../lib/contrib  -lcxx  -lcxxabi -lunwind -lcityhash
LFLAGS +=
LFLAGS +=  -lc -lm -lrt -lpthread -ldl
LFLAGS += -lgcc

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