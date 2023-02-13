
SRC = main.cc

CFLAGS = -g -ggdb -std=c++20
LFLAGS = -ldl
CXX = clang++

BIN = noexcept


all: debug

debug:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS}

run: all
	./${BIN}

clean:
	rm -rf ${BIN} *.o