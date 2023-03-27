#include "WriteBufferFromFileDescriptor.hh"

#include "base/stopwatch.hh"

#include <stdexcept>
#include <string>
#include <sys/types.h>
#include <unistd.h>
#include <sys/stat.h>


void WriteBufferFromFileDescriptor::nextImpl() {
    if (!offset())
        return;

    // Stopwatch watch;
    size_t bytes_written = 0;
    while (bytes_written != offset()) {
        ssize_t res = 0;
        res = ::write(fd, working_buffer.begin() + bytes_written, offset() - bytes_written);
        if ((-1 == res || 0 == res) && errno != EINTR) {
            // Don't use getFileName() here because this method can be called from destructor
            String error_file_name = file_name;
            if (error_file_name.empty()) {
                error_file_name = "(fd = " + std::to_string(fd) + ")";
            }
            throw std::runtime_error("Cannot write to file " + error_file_name);
        }
        if (res > 0)
            bytes_written += res;
    }
}

/// NOTE: This class can be used as a very low-level building block, for example
/// in trace collector. In such places allocations of memory can be dangerous,
/// so don't allocate anything in this constructor.
WriteBufferFromFileDescriptor::WriteBufferFromFileDescriptor(
    int fd_,
    size_t buf_size,
    char * existing_memory,
    size_t alignment,
    std::string file_name_)
    : WriteBufferFromFileBase(buf_size, existing_memory, alignment)
    , fd(fd_)
    , file_name(std::move(file_name_))
{
}

WriteBufferFromFileDescriptor::~WriteBufferFromFileDescriptor() {
    finalize();
}

void WriteBufferFromFileDescriptor::finalizeImpl() {
    if (fd < 0) {
        assert(!offset() && "attempt to write after close");
        return;
    }
    next();
}

void WriteBufferFromFileDescriptor::sync() {
    // If buffer has pending data - write it
    next();

    // Request OS to sync data with storage medium.
#ifdef OS_DARWIN
    int res = ::fsync(fd);
#else
    int res = ::fdatasync(fd);
#endif

    if (-1 == res) {
        throw std::runtime_error("Cannot fsync " + getFileName());
    }
}

off_t WriteBufferFromFileDescriptor::seek(off_t offset, int whence) { // NOLINT
    off_t res = lseek(fd, offset, whence);
    if (-1 == res)
        throw std::runtime_error("Cannot seek through file " + getFileName());
    return res;
}

void WriteBufferFromFileDescriptor::truncate(off_t length) { // NOLINT
    int res = ftruncate(fd, length);
    if (-1 == res)
        throw std::runtime_error("Cannot truncate file " + getFileName());
}

off_t WriteBufferFromFileDescriptor::size() const {
    struct stat buf;
    int res = fstat(fd, &buf);
    if (-1 == res) {
        throw std::runtime_error("Cannot execute fstat " + getFileName());
    }
    return buf.st_size;
}

std::string WriteBufferFromFileDescriptor::getFileName() const {
    if (file_name.empty())
        return "fd( = " + std::to_string(fd) + ")";

    return file_name;
}