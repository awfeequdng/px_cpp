#include <iostream>
#include <unordered_map>
#include "ReadBuffer.hh"
#include "BufferWithOwnMemory.hh"


// struct TT {};

class TestBuffer : public BufferWithOwnMemory<ReadBuffer> {

};

int main() {

    std::cout << "hello world" << std::endl;
    return 0;
}
