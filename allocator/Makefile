
SRC = main.cc Allocator.cc mremap.cc

CFLAGS = -g -ggdb -std=c++20
LFLAGS = -ldl
CXX = clang++
BIN = allocator

all: debug

release:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS} -DNDEBUG=1

debug:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS}

so:
	${CXX} ${SRC} -o lib${BIN}.so -shared -fPIC ${LFLAGS} ${CFLAGS} -DNDEBUG=1

run: all
	./${BIN}

clean:
	rm -rf ${BIN}
