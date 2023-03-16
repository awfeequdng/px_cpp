
SRC = main.cc

CFLAGS = -O3 -std=c++20
# LFLAGS = -ldl
CXX = clang++
BIN = restrict


all: debug

release:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS} -DNDEBUG=1

debug:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS}

run: all
	./${BIN}

clean:
	rm -rf ${BIN}