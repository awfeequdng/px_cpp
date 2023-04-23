
SRC = main.cc

CFLAGS = -g -ggdb -std=c++20 -lpthread -lfunc
LFLAGS = -ldl
CXX = clang++
BIN = test_dlopen


all: debug

debug:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS}

run: all
	./${BIN}

so: func.cc
	${CXX} -shared -fPIC $< -o libfunc.so

clean:
	rm -rf ${BIN}