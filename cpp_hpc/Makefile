
LIB_SRC = superscalar.cc

SRC = ${LIB_SRC}

CFLAGS = -O3 -std=c++20 -I../contrib/google-benchmark/include
# CFLAGS += -nodefaultlibs -lc -lm -lrt -lpthread -ldl -lgcc

LFLAGS = -L../lib/contrib -rpath ../lib/contrib
LFLAGS += -lcxx  -lcxxabi -lgbenchmark -lunwind

CXX = clang++
BIN = cpp_hpc

all: release

release:
	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS}  -DNDEBUG=1

# debug:
# 	${CXX} ${SRC} -o ${BIN} ${LFLAGS} ${CFLAGS}


run: all
	./${BIN}

clean:
	rm -rf ${BIN}
