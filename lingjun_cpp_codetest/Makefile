
SRC = main.cc order_book.cc md_csv_parser.cc md_hdf5_parser.cc

CFLAGS = -g -ggdb -O0 -std=c++20
LFLAGS = -ldl -lpthread
CXX = clang++
BIN = lingjun_cpp_codetest


all: debug

release:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS} -DNDEBUG=1

debug:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS}

run: all
	./${BIN}

clean:
	rm -rf ${BIN}