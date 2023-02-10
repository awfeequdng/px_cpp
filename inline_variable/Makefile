
SRC = main.cc notmain.cc

CFLAGS = -g -ggdb -std=c++20
LFLAGS = -ldl
CXX = clang++
BIN = inline_variable


all: debug

debug:
	${CXX} main.cc -c -o main.o  ${LFLAGS} ${CFLAGS}
	${CXX} notmain.cc -c -o notmain.o  ${LFLAGS} ${CFLAGS}
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS}

run: all
	./${BIN}
	nm main.o notmain.o

clean:
	rm -rf ${BIN} *.o