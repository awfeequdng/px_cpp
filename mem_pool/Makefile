
SRC = mem_pool.cc main.cc gc.cc gc-pages.cc

all: debug

release:
	clang++ ${SRC} -o mem_pool -DNDEBUG=1

debug:
	clang++ ${SRC} -o mem_pool

clean:
	rm -rf mem_pool