
SRC = main.cc

CXX = clang++
BIN = test_critical_problem

build:
	${CXX} -L. main.cc -Wl,--whole-archive -lbase -Wl,--no-whole-archive -o  ${BIN} -rdynamic -lother
# ${CXX} -L. main.cc -Wl,--start-group -Wl,--whole-archive -lbase -Wl,--end-group -o ${BIN}

run: build
	./${BIN}

static: derive.cc base.cc
	${CXX} derive.cc -c
	${CXX} base.cc -c
	llvm-ar qc libbase.a derive.o base.o

build_base: static

other: other.cc
	${CXX} $< -o libother.so -std=c++17 -shared -fPIC


clean:
	rm -rf ${BIN} *.so *.a *.o