
SRC = tracer_new.cc main.cc tracer_malloc.cc

CFLAGS = -g -ggdb
LFLAGS = -ldl
CXX = g++

all: debug

release:
	${CXX} ${SRC} -o mem_tracer ${LFLAGS} ${CFLAGS} -DNDEBUG=1

debug:
	${CXX} ${SRC} -o mem_tracer ${LFLAGS} ${CFLAGS}

clean:
	rm -rf mem_tracer