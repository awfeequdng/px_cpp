# test.cc

SRC = main.cc test.cc

CXX = clang++
BIN = test_isystem


I:
	# ${CXX} -E ${SRC} -Itest2 -I test3  > ${BIN}.I
	${CXX} ${SRC} -c -isystem test3 -Itest2
	# ${CXX} ${SRC} -o ${BIN} -Itest1 -Itest2 -Itest3 -Itest4

isystem:
	${CXX} -E ${SRC} -isystem test1 -isystem test2 -isystem test3 -isystem test4 > ${BIN}.isystem
	${CXX} ${SRC} -o ${BIN} -Itest1 -Itest2 -isystem test3 -isystem test4

run: clean I isystem
	./${BIN}

clean:
	rm -rf ${BIN}