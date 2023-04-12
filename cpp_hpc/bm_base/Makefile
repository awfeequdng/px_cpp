
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
CFLAGS += -DUSE_JEMALLOC
# CFALGS +=-Wl,-no-undefined
# CFLAGS += -lgcc

LFLAGS =
# LFLAGS += -fuse-ld=lld
LFLAGS += -nodefaultlibs
LFLAGS += -L${ROOTDIR}/lib/contrib -rpath ${ROOTDIR}/lib/contrib  -lcxx  -lcxxabi -lgbenchmark -lgbenchmark_main -lunwind -lcityhash
LFLAGS += -L${ROOTDIR}/lib -rpath ${ROOTDIR}/lib -lbase
LFLAGS += -lm -lrt -lpthread -ldl

# -ljemalloc必须放在 -lc的前面。
# 由于-ljemalloc放在前面，调用malloc时优先解析libjemalloc库中的malloc函数，而不是libc中的malloc
# 又由于我们代码中显示的调用了libjemalloc的sallocx函数(在Common/memory.hh中调用)，因此不能使用libc中的malloc函数，不然会报错。
# 还有另外一种解决链接顺序的办法就是：将libjemalloc静态链接到项目当中来，malloc是弱引用，所以最终malloc会使用libjemalloc中的函数
LFLAGS += -ljemalloc
LFLAGS += -lc
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



