
SRC = main.cc

# todo: 当前测试主线程的堆栈为64M左右，但是通过stack-size修改堆栈大小后，却没有生效，这是为什么？
CFLAGS = -std=c++20 -Wl,-z,stack-size=2097152
# CFLAGS = -std=c++20 -Wl,-z,stack-size=100000000
LFLAGS = -lpthread
CXX = clang++
BIN = test_stack_size

all: debug

release:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS} -DNDEBUG=1

debug:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS}

run: all
	./${BIN}

clean:
	rm -rf ${BIN}