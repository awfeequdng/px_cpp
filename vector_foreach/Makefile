
SRC = main.cc

CFLAGS = -g -ggdb -std=c++17
LFLAGS = -ldl
CXX = g++
BIN = vector_foreach


all: debug

release:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS} -DNDEBUG=1

debug:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS}

run: all
	./${BIN}

clean:
	rm -rf ${BIN}