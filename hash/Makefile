
SRC = main.cc

CFLAGS = -g -ggdb -std=c++20 -I..
LFLAGS = -ldl -lhex -L../lib -rpath ../lib
CXX = clang++
BIN = siphash


all: debug

release:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS} -DNDEBUG=1

debug:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS}

run: all
	./${BIN}

clean:
	rm -rf ${BIN}