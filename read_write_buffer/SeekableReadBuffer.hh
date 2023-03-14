#pragma once

#include "ReadBuffer.hh"

#include <memory>
#include <optional>

class SeakableReadBuffer : public ReadBuffer {
public:
    SeakableReadBuffer(Position ptr, size_t size)
        : ReadBuffer(ptr, size) {}
    SeakableReadBuffer(Position ptr, size_t size, size_t offset)
        : ReadBuffer(ptr, size, offset) {}

    // Shifts buffer current position to given offset.
    // @param off Offset.
    // @param whence Seek mode (@see SEEK_SET, @see SEEK_CUR).
    // @return New position from the beginning of underlying buffer / file
    virtual off_t seek(off_t off, int whence) = 0;

    // Keep in mind that seekable buffer may encounter eof() once and the working
    // buffer may get into inconsistent state. Don't forget to reset it on the
    // first nextImpl() after seek()
    virtual off_t getPosition() = 0;

};

using SeakableReadBufferPtr = std::shared_ptr<SeakableReadBuffer>;


class SeekableReadBufferWithSize : public SeekableReadBuffer
{
public:
    SeekableReadBufferWithSize(Position ptr, size_t size)
        : SeekableReadBuffer(ptr, size) {}
    SeekableReadBufferWithSize(Position ptr, size_t size, size_t offset)
        : SeekableReadBuffer(ptr, size, offset) {}

    /// set std::nullopt in case it is impossible to find out total size.
    virtual std::optional<size_t> getTotalSize() = 0;

    /**
    * Some buffers might have different seek restrictions according to where it is used.
    * For example, ReadBufferFromS3 and ReadBufferFromWebServer, when used for reading
    * from remote disks, require some additional invariants and restrictions, which
    * are not needed in other cases.
    */
    enum class ReadType
    {
        DEFAULT,
        DISK_READ
    };

    void setReadType(ReadType type) { read_type = type; }

protected:
    ReadType read_type = ReadType::DEFAULT;
    std::optional<size_t> file_size;
};