
all: debug

release:
	clang++ tracer_new.cc main.cc -o tracer_new -DNDEBUG=1

debug:
	clang++ tracer_new.cc main.cc -o tracer_new

clean:
	rm -rf tracer_new