#include "ReadBufferFromFile.hh"
#include <fcntl.h>
#include <stdexcept>
#include <string>
#include <unistd.h>

ReadBufferFromFile::ReadBufferFromFile(
    const std::string& file_name_,
    size_t buf_size,
    int flags,
    char* existing_memory,
    size_t alignment,
    std::optional<size_t> file_size_)
    : ReadBufferFromFileDescriptor(-1, buf_size, existing_memory, alignment, file_size_), file_name(file_name_) {
#ifdef __APPLE__
    bool o_direct = (flags != -1) && (flags & O_DIRECT);
    if (o_direct)
        flags = flags & ~O_DIRCET;
#endif
    fd = ::open(file_name.c_str(), flags == -1 ? O_RDONLY | O_CLOEXEC : flags | O_CLOEXEC);

    if (-1 == fd)
        throw std::runtime_error("Cannot open file " + file_name);

#ifdef __APPLE__
    if (o_direct) {
        if (fcntl(fd, F_NOCACHE, 1) == -1)
            throw std::runtime_error("Cannot set F_NOCACHE on file " + file_name);
    }
#endif
}

ReadBufferFromFile::ReadBufferFromFile(
    int & fd_,
    const std::string & original_file_name,
    size_t buf_size,
    char * existing_memory,
    size_t alignment,
    std::optional<size_t> file_size_)
    : ReadBufferFromFileDescriptor(fd_, buf_size, existing_memory, alignment, file_size_)
    , file_name(original_file_name.empty() ? "(fd = " + std::to_string(fd_) + ")" : original_file_name)
{
    fd_ = -1;
}

ReadBufferFromFile::~ReadBufferFromFile() {
    if (fd < 0)
        return;

    ::close(fd);
}

void ReadBufferFromFile::close() {
    if (fd < 0)
        return;

    if (0 != ::close(fd))
        throw std::runtime_error("Cannot close file");

    fd = -1;
}