
SRC = main.cc

CFLAGS = -g -ggdb -std=c++20
# -lstdc++fs用来支持c++20的filesystem功能
LFLAGS = -ldl -lstdc++fs
CXX = clang++
BIN = get_executable_path


all: debug

release:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS} -DNDEBUG=1

debug:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS}

run: all
	./${BIN}

clean:
	rm -rf ${BIN}