
LIB_SRC = sleep.cc Throttler.cc getThreadId.cc terminalColors.cc

SRC = ${LIB_SRC} main.cc

CFLAGS = -g -ggdb -std=c++20
LFLAGS = -ldl
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