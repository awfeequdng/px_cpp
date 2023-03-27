
LIB_SRC = ProfileEvents.cc sleep.cc Throttler.cc

SRC = ${LIB_SRC} main.cc

CFLAGS = -g -ggdb -std=c++20
LFLAGS = -ldl
CXX = clang++
BIN = base

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