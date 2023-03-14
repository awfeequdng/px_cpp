#pragma once

#include <iostream>

#include "ReadBuffer.hh"
#include "BufferWithOwnMemory.hh"


class ReadBufferFromIStream : public BufferWithOwnMemory<ReadBuffer>
{
private:
    std::istream & istr;

    bool nextImpl() override;

public:
    explicit ReadBufferFromIStream(std::istream & istr_, size_t size = IO_DEFAULT_BUFFER_SIZE);
};

