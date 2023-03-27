#pragma once
#include "WriteBufferFromFileBase.hh"
#include <cstddef>
#include <string>
#include <sys/types.h>

// Use ready file descriptor. Does not open or close a file.
class WriteBufferFromFileDescriptor : public WriteBufferFromFileBase {
public:
    WriteBufferFromFileDescriptor(
        int df_ = -1,
        size_t buf_size = IO_DEFAULT_BUFFER_SIZE,
        char* existing_memory = nullptr,
        size_t alignment = 0,
        std::string file_name_ = ""
    );

    // Could be used before initialization if needed 'fd' was not passed to constructor.
    // It's not possiable to change 'fd' during work.
    void setFD(int fd_) {
        fd = fd_;
    }

    int getFD() const {
        return fd;
    }

    ~WriteBufferFromFileDescriptor() override;

    void sync() override;

    // clang-tidy wants these methods to be const, but
    // they are not const semantically
    off_t seek(off_t offset, int whence); // NOLINT
    void truncate(off_t length); // NOLINT

    // Name or some description of file
    std::string getFileName() const override;

    off_t size() const;

protected:
    void nextImpl() override;

    int fd;

    // If file has name contains filename, otherwise contains string "(fd=...)"
    std::string file_name;

    void finalizeImpl() override;
};