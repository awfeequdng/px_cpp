
LIB_SRC = StringUtils.cc
SRC = main.cc ${LIB_SRC}

CFLAGS = -g -ggdb -std=c++20
LFLAGS = -ldl
CXX = clang++
BIN = StringUtils


all: debug

release:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS} -DNDEBUG=1

debug:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS}

so:
	${CXX} ${SRC} -o libstrutils.so -shared -fPIC ${LFLAGS} ${CFLAGS} -DNDEBUG=1
	mv libstrutils.so ../lib

run: all
	./${BIN}

clean:
	rm -rf ${BIN}