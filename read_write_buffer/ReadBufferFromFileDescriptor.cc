#include "ReadBufferFromFileDescriptor.hh"

#include <string>

#include <fcntl.h>
#include <stdexcept>

#include <sys/select.h>
#include <sys/types.h>
#include <unistd.h>
#include <sys/stat.h>

std::string ReadBufferFromFileDescriptor::getFileName() const
{
    return "fd = " + std::to_string(fd) + ")";
}

bool ReadBufferFromFileDescriptor::nextImpl() {

    // If internal_buffer size if empty, then read() cannot be disinguished from EOF
    assert(!internal_buffer.empty());

    // This is a workaround of a read pass EOF bug in linux kernel with pread()
    if (file_size.has_value() && file_offset_of_buffer_end >= *file_size)
        return false;

    size_t bytes_read = 0;

    // 在产生EINTR中断，导致bytes_read没读到的情况下，继续读一次数据
    while (!bytes_read) {
        ssize_t res = 0;
        {
            if (use_pread) {
                res = ::pread(fd, internal_buffer.begin(), internal_buffer.size(), file_offset_of_buffer_end);
            } else {
                res = ::read(fd, internal_buffer.begin(), internal_buffer.size());
            }
        }
        if (!res) {
            break;
        }
        if (-1 == res && errno != EINTR) {
            throw std::runtime_error("Cannot read from file " + getFileName());
        }
        if (res > 0) {
            bytes_read += res;
        }
    }

    file_offset_of_buffer_end += bytes_read;

    if (bytes_read) {
        working_buffer = internal_buffer;
        working_buffer.resize(bytes_read);
    } else
        return false;

    return true;
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

// If 'offset' is small enough to stay in buffer after seek, then true seek in file does not happen.
off_t ReadBufferFromFileDescriptor::seek(off_t offset, int whence) {
    size_t new_pos;
    if (whence == SEEK_SET) {
        assert(offset >= 0);
        new_pos = offset;
    } else if (whence == SEEK_CUR) {
        new_pos = file_offset_of_buffer_end - (working_buffer.end() - pos) + offset;
    } else {
        throw std::runtime_error("ReadBufferFromFileDescriptor::seek expects SEEK_SET or SEEK_CUR as whence");
    }

    // Position is unchanged
    if (new_pos + (working_buffer.end() - pos) == file_offset_of_buffer_end)
        return new_pos;

    if (file_offset_of_buffer_end - working_buffer.size() <= static_cast<size_t>(new_pos)
        && new_pos <= file_offset_of_buffer_end) {
        // Position is still inside the buffer.
        // Probably it is at the end of the buffer - then we will load data on the following 'next' call.
        pos = working_buffer.end() - (file_offset_of_buffer_end - new_pos);
        assert(pos >= working_buffer.begin());
        assert(pos <= working_buffer.end());

        return new_pos;
    } else {
        // Position is out of the buffer, we need to do real seek.
        off_t seek_pos = required_alignment > 1
            ? new_pos / required_alignment * required_alignment
            : new_pos;

        off_t offset_after_seek_pos = new_pos - seek_pos;

        // First reset the buffer so the next read will fetch new data to the buffer
        resetWorkingBuffer();

        /// In case of using 'pread' we just update the info about the next position in file.
        /// In case of using 'read' we call 'lseek'.

        if (!use_pread) {
            off_t res = ::lseek(fd, seek_pos, SEEK_SET);
            if (-1 == res)
                throw std::runtime_error("Cannot seek through file: " + getFileName());

            // Also note that seeking past the file size is not allowed.
            if (res != seek_pos)
                throw std::runtime_error("The 'lseek' syscall returned value: " + std::to_string(res) + " that is not expected: " + std::to_string(seek_pos));
        }

        file_offset_of_buffer_end = seek_pos;
        if (offset_after_seek_pos > 0)
            ignore(offset_after_seek_pos);

        return seek_pos;
    }
}

void ReadBufferFromFileDescriptor::rewind() {
    if (!use_pread) {
        off_t res = ::lseek(fd, 0, SEEK_SET);
        if (-1 == res) {
            throw std::runtime_error("Cannot seek through file " + getFileName());
        }
    }
    // Clearing the buffer with existing data, New data will be read on subsequent call to 'next'.
    working_buffer.resize(0);
    pos = working_buffer.begin();
    file_offset_of_buffer_end = 0;
}

bool ReadBufferFromFileDescriptor::poll(size_t timeout_microseconds) {
    fd_set fds;
    FD_ZERO(&fds);
    FD_SET(fd, &fds);
    timeval timeout = { time_t(timeout_microseconds / 1000000), suseconds_t(timeout_microseconds % 1000000) };

    int res = select(1, &fds, nullptr, nullptr, &timeout);

    if (-1 == res) {
        throw std::runtime_error("Cannot select: " + std::to_string(fd));
    }

    return res > 0;
}

off_t ReadBufferFromFileDescriptor::size() {
    struct stat buf;
    int res = fstat(fd, &buf);
    if (-1 == res)
        throw std::runtime_error("Cannot execute fstat " + getFileName());

    return buf.st_size;
}

