
LIB_SRC = getMappedArea.cc MemoryStatisticsOS.cc

SRC = ${LIB_SRC} main.cc

CFLAGS = -g -ggdb -std=c++20 -I..
LFLAGS = -ldl -L../lib -lallocator -lrwbuf -lstrutils -lhex -rpath ../lib
CXX = clang++
BIN = get_sys_info

all: debug

release:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS} -DNDEBUG=1

debug:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS}

so:
	${CXX} ${LIB_SRC} -o libsysinfo.so -shared -fPIC ${LFLAGS} ${CFLAGS} -DNDEBUG=1
	mv libsysinfo.so ../lib

run: all
	./${BIN}

clean:
	rm -rf ${BIN}