
SRC = tracer_new.cc main.cc tracer_malloc.cc

CFLAGS = -g -ggdb
LFLAGS = -ldl

all: debug

release:
	clang++ ${SRC} -o tracer ${LFLAGS} ${CFLAGS} -DNDEBUG=1

debug:
	clang++ ${SRC} -o tracer ${LFLAGS} ${CFLAGS}

clean:
	rm -rf tracer