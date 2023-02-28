
SRC = main.cc

CFLAGS = -g -ggdb -std=c++20
LFLAGS = -ldl
CXX = clang++
BIN = test_template


all: debug

release:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS} -DNDEBUG=1

debug:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS}

run: all
	./${BIN}

clean:
	rm -rf ${BIN}