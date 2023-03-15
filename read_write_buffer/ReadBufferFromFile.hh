#pragma once

#include "ReadBufferFromFileDescriptor.hh"


/** Accepts path to file and opens it, or pre-opened file descriptor.
  * Closes file by himself (thus "owns" a file descriptor).
  */
class ReadBufferFromFile : public ReadBufferFromFileDescriptor
{
protected:
    std::string file_name;

public:
    explicit ReadBufferFromFile(
        const std::string & file_name_,
        size_t buf_size = IO_DEFAULT_BUFFER_SIZE,
        int flags = -1,
        char * existing_memory = nullptr,
        size_t alignment = 0,
        std::optional<size_t> file_size_ = std::nullopt);

    /// Use pre-opened file descriptor.
    explicit ReadBufferFromFile(
        int & fd, /// Will be set to -1 if constructor didn't throw and ownership of file descriptor is passed to the object.
        const std::string & original_file_name = {},
        size_t buf_size = IO_DEFAULT_BUFFER_SIZE,
        char * existing_memory = nullptr,
        size_t alignment = 0,
        std::optional<size_t> file_size_ = std::nullopt);

    ~ReadBufferFromFile() override;

    /// Close file before destruction of object.
    void close();

    std::string getFileName() const override
    {
        return file_name;
    }
};