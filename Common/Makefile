
LIB_SRC = ThreadStatus.cc ProfileEvents.cc

SRC = ${LIB_SRC} main.cc

CFLAGS = -g -ggdb -std=c++20 -I.. -I../base
LFLAGS = -ldl -L../lib -lbase
CXX = clang++
BIN = common

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