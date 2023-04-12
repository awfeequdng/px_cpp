#pragma once

#include "WriteBufferFromFileDescriptor.hh"
#include <string>
#include <sys/types.h>

#ifndef O_DIRECT
#define O_DIRECT 00040000
#endif

class WriteBufferFromFile : public WriteBufferFromFileDescriptor {
public:
    WriteBufferFromFile(
        const std::string& fie_name_,
        size_t buf_size = IO_DEFAULT_BUFFER_SIZE,
        int flags = -1,
        mode_t mode = 0666,
        char* existing_memory = nullptr,
        size_t alginment = 0
    );

    // Use pre-opened file descriptor.
    WriteBufferFromFile(
        int& fd, // Will be set to -1 if constructor didn't throw and ownership of file descriptor is passed to the object.
        const std::string& original_file_name = {},
        size_t buf_size = IO_DEFAULT_BUFFER_SIZE,
        char* existing_memory = nullptr,
        size_t alignment = 0
    );

    ~WriteBufferFromFile() override;

    // Close file before destruction of object.

    std::string getFileName() const override {
        return file_name;
    }
private:
    void finalizeImpl() override;
};