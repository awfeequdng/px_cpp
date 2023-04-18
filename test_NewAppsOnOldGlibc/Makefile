
SRC = main.cc

CFLAGS = -std=c++20 -O0
CXX = clang++
BIN = test_NewAppsOnOldGlibc

all: memcpy debug

memcpy:
	${CXX} -fPIC -shared memcpy.cc -o libmemcpy.so -fno-builtin

release:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS} -DNDEBUG=1

debug:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS}

run: all
	LD_PRELOAD=./libmemcpy.so ./${BIN}

clean:
	rm -rf ${BIN} libmemcpy.so