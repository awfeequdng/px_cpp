#pragma once

#include "ReadBufferFromFileBase.hh"

class ReadBufferFromFileDescriptor : public ReadBufferFromFileBase {
protected:
    const size_t required_alignment = 0;    // For O_DIRECT both file offsets and memory addresses have to be aligned.
    bool use_pread = false;                 // To access one fd from multiple threads, use 'pread' syscall instead of 'read'

    size_t file_offset_of_buffer_end = 0;   // What offset in file corresponds to working_buffer.end().
    int fd;

    bool nextImpl() override;
    void prefetch() override;

    // Name or some description of file.
    std::string getFileName() const override;

public:
    ReadBufferFromFileDescriptor(
        int fd_,
        size_t buf_size = IO_DEFAULT_BUFFER_SIZE,
        char* existing_memory = nullptr,
        size_t alignment = 0,
        std::optional<size_t> file_size_ = std::nullopt)
        : ReadBufferFromFileBase(buf_size, existing_memory, alignment, file_size_)
        , required_alignment(alignment)
        , fd(fd_)
    {}

    int getFD() const {
        return fd;
    }

    off_t getPosition() override {
        // todo: 没看懂
        return file_offset_of_buffer_end - (working_buffer.end() - pos);
    }

    // If 'offset' is small enough to stay in buffer after seek, then true seek in file does not happen.
    off_t seek(off_t off, int whence) override;

    // seek to the beginning, discarding already read data if any. Useful to reread file that changes on every read.
    void rewind();

    off_t size();

private:
    // Assuming file descriptor support 'select', check that we have data to read or wait until timeout.
    bool poll(size_t timeout_microseconds);
};


/** Similar to ReadBufferFromFileDescriptor but it is using 'pread' allowing multiple concurrent reads from the same fd.
  */
class ReadBufferFromFileDescriptorPRead : public ReadBufferFromFileDescriptor
{
public:
    ReadBufferFromFileDescriptorPRead(
        int fd_,
        size_t buf_size = IO_DEFAULT_BUFFER_SIZE,
        char * existing_memory = nullptr,
        size_t alignment = 0,
        std::optional<size_t> file_size_ = std::nullopt)
        : ReadBufferFromFileDescriptor(fd_, buf_size, existing_memory, alignment, file_size_)
    {
        use_pread = true;
    }
};