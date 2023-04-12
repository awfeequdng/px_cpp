
LIB_SRC = superscalar.cc
SRC = ${LIB_SRC}

ROOTDIR = ../..
EXECS = $(subst .cc,,$(wildcard *.cc))

CFLAGS =
CFLAGS = -O0
CFLAGS += -I${ROOTDIR}/contrib/libcxx/include -I${ROOTDIR}/contrib/libcxxabi/include -I${ROOTDIR}/contrib/libunwind/include
CFLAGS += -I${ROOTDIR}/contrib/google-benchmark/include -I${ROOTDIR}/contrib/cityhash102/include
CFLAGS += -I${ROOTDIR}/base
CFLAGS += -std=c++20 -nostdinc++
# CFALGS +=-Wl,-no-undefined
# CFLAGS += -lgcc

LFLAGS =
# LFLAGS += -fuse-ld=lld
LFLAGS += -nodefaultlibs
LFLAGS += -L${ROOTDIR}/lib/contrib -rpath ${ROOTDIR}/lib/contrib  -lcxx  -lcxxabi -lgbenchmark -lgbenchmark_main -lunwind -lcityhash
LFLAGS += -L${ROOTDIR}/lib -rpath ${ROOTDIR}/lib -lbase
LFLAGS +=  -lc -lm -lrt -lpthread -ldl

CXX = clang++
OBJDUMP = objdump

all: ${EXECS}

%: %.cc
	${CXX} $< -o $@ ${LFLAGS} ${CFLAGS}  -DNDEBUG=1
	${OBJDUMP} -d $@ > $@.asm


run: clean ${EXECS}
	@echo "run :" $^
	@for e in ${EXECS}; do ./$$e; done

clean:
	rm -rf ${EXECS} *.asm



