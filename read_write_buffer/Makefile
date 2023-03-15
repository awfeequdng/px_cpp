
LIB_SRC = ReadBufferFromFileBase.cc ReadBufferFromFileDescriptor.cc ReadBufferFromIStream.cc ReadBufferFromFile.cc ReadHelpers.cc
SRC = ${LIB_SRC} main.cc

CFLAGS = -g -ggdb -std=c++20 -I../
LFLAGS = -ldl -L../lib -lallocator
CXX = clang++
BIN = read_write_buffer

all: debug

release:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS} -DNDEBUG=1

debug:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS}

so:
	${CXX} ${LIB_SRC} -o librwbuf.so -shared -fPIC ${LFLAGS} ${CFLAGS} -DNDEBUG=1
	mv librwbuf.so ../lib

run: all
	./${BIN}

clean:
	rm -rf ${BIN}