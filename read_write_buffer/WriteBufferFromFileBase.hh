#pragma once

#include <string>
#include <fcntl.h>

#include "WriteBuffer.hh"
#include "BufferWithOwnMemory.hh"

class WriteBufferFromFileBase : public BufferWithOwnMemory<WriteBuffer> {
public:
    WriteBufferFromFileBase(size_t buf_size, char *existing_memory, size_t alignment);
    ~WriteBufferFromFileBase() override = default;

    void sync() override = 0;
    virtual std::string getFileName() const = 0;
};