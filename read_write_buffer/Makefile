
SRC = main.cc ReadBufferFromFileBase.cc ReadBufferFromFileDescriptor.cc ReadBufferFromIStream.cc

CFLAGS = -g -ggdb -std=c++20 -I../
LFLAGS = -ldl -L../allocator -lallocator
CXX = clang++
BIN = read_write_buffer


all: debug

release:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS} -DNDEBUG=1

debug:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS}

run: all
	./${BIN}

clean:
	rm -rf ${BIN}