#include "ReadBufferFromFileDescriptor.hh"

#include <fcntl.h>

std::string ReadBufferFromFileDescriptor::getFileName() const
{
    return "(fd = " + std::to_string(fd) + ")";
}

bool ReadBufferFromFileDescriptor::nextImpl() {

    // If internal_buffer size if empty, then read() cannot be disinguished from EOF
    assert(!internal_buffer.empty());
}

void ReadBufferFromFileDescriptor::prefetch() {
#if defined(POSIX_FADV_WILLNEED)
    /// For direct IO, loading data into page cache is pointless.
    if (required_alignment)
        return;

    /// Ask OS to prefetch data into page cache.
    if (0 != posix_fadvise(fd, file_offset_of_buffer_end, internal_buffer.size(), POSIX_FADV_WILLNEED))
        throw std::runtime_error("Cannot posix_fadvise");
#endif
}