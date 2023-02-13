
SRC = main.cc

CFLAGS = -g -ggdb -std=c++20
LFLAGS = -ldl -lpthread
CXX = clang++
BIN = false_sharing


all: debug

debug:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS}

run: all
	./${BIN}

clean:
	rm -rf ${BIN} *.o