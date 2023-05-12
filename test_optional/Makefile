
SRC = main.cc
# 需要链接动态库libcxx.so，所以需要export这个动态库的路径
CFLAGS = -g -ggdb -std=c++23 -stdlib=libc++
LFLAGS = -ldl
CXX = clang++
BIN = test_optional


all: debug

release:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS} -DNDEBUG=1

debug:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS}

run: all
	./${BIN}

clean:
	rm -rf ${BIN}