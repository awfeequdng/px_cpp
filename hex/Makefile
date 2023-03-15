
LIB_SRC = hex.cc

SRC = ${LIB_SRC} main.cc

CFLAGS = -g -ggdb -std=c++20
LFLAGS = -ldl
CXX = clang++
BIN = hex

all: debug

release:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS} -DNDEBUG=1

debug:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS}

so:
	${CXX} ${LIB_SRC} -o libhex.so -shared -fPIC ${LFLAGS} ${CFLAGS} -DNDEBUG=1
	mv libhex.so ../lib

run: all
	./${BIN}

clean:
	rm -rf ${BIN}