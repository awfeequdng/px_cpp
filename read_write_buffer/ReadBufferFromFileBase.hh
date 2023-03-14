#pragma once

#include "BufferWithOwnMemory.hh"
#include "SeekableReadBuffer.hh"

class ReadBufferFromFileBase : public BufferWithOwnMemory<SeekableReadBuffer> {
public:
    ReadBufferFromFileBase();
    ReadBufferFromFileBase(
        size_t buf_size,
        char* existing_memory,
        size_t alignment,
        std::optional<size_t> file_size_ = std::nullopt);
    ~ReadBufferFromFileBase() override;
    virtual std::string getFileName() const = 0;

protected:
    std::optional<size_t> file_size;

};