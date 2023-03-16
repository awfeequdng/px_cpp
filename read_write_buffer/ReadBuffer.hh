#pragma once
#include "BufferBase.hh"

#include <algorithm>
#include <cassert>
#include <exception>
#include <stdexcept>
#include <string>
#include <cstring>

/**
 A simple abstract class for buffered data reading (char sequences) from somewhere.
 Unlike std::istream, it provides access to the internal buffer,
 and also allows you to manually manage the position inside the buffer.

 Note! `char*`, not `const char*` is used
 (so that you can take out the common code into BufferBase, and also so that you can fill the buffer in with new data).
 This causes inconveniences - for example, when using ReadBuffer to read from a chunk of memory const char*,
 you have to use const_cast.

 Derived classed must implement the nextImpl() method.
*/
class ReadBuffer : public BufferBase {
public:
    // Creates a buffer and sets a piece of available data to read to zero size,
    // so that the next() function is called to load the new data portion into the buffer at the first try.
    ReadBuffer(Position ptr, std::size_t size) : BufferBase(ptr, size, 0) { working_buffer.resize(0); }

    // Used when the buffer is already full of data that can be read.
    // (in this case, pass 0 as an offset)
    ReadBuffer(Position ptr, std::size_t size, std::size_t offset) : BufferBase(ptr, size, offset) {}

    // Copying the read buffers can be dangerous because they can hold a lot of
    // memory or open files, so better to disable the copy constructor to prevent
    // accidental copying
    ReadBuffer(const ReadBuffer&) = delete;

    // fixme: behavior differs greately from `BufferBase::set()` and it's very confusing.
    void set(Position ptr, std::size_t size) {
        BufferBase::set(ptr, size, 0);
        working_buffer.resize(0);
    }

    // read next data and fill a buffer with it; set position to the beginning;
    // return `false` in case of end, `true` otherwise; throw an exception, if something is wrong
    bool next() {
        assert(!hasPendingData());
        assert(position() <= working_buffer.end());

        bytes += offset();
        bool res = nextImpl();
        if (!res) {
            working_buffer = Buffer(pos, pos);
        } else {
            pos = working_buffer.begin() + nextimpl_working_buffer_offset;
            assert(position() != working_buffer.end());
        }
        nextimpl_working_buffer_offset = 0;

        assert(position() <= working_buffer.end());

        return res;
    }

    inline void nextIfAtEnd() {
        if (!hasPendingData())
            next();
    }

    virtual ~ReadBuffer() = default;

    // Unlike std::istream, it returns true if all data was read
    // (and not in case there was an attempt to read after the end).
    // If at the moment the position is at the end of the buffer, it calls the next() method.
    // That is, it has a side effect - if the buffer is over, then it updates it and set the position to the beginning.
    // Try to read after the end should throw an exception
    bool inline eof() {
        return !hasPendingData() && !next();
    }

    void ignore() {
        if (!eof())
            ++pos;
        else
            throwReadAfterEOF();
    }

    void ignore(std::size_t n) {
        while (n != 0 && !eof()) {
            std::size_t bytes_to_ignore = std::min(static_cast<std::size_t>(working_buffer.end() - pos), n);
            pos += bytes_to_ignore;
            n -= bytes_to_ignore;
        }

        if (n)
            throwReadAfterEOF();
    }

    // You could call this method `ignore`, and `ignore` call `ignoreStrict`.
    std::size_t tryIgnore(std::size_t n) {
        std::size_t bytes_ignored = 0;
        while (bytes_ignored < n && !eof()) {
            std::size_t bytes_to_ignore = std::min(static_cast<std::size_t>(working_buffer.end() - pos), n - bytes_ignored);
            pos += bytes_to_ignore;
            bytes_ignored += bytes_to_ignore;
        }

        return bytes_ignored;
    }

    void ignoreAll() {
        tryIgnore(std::numeric_limits<std::size_t>::max());
    }

    // Peeks a single byte.
    bool inline peek(char& c) {
        if (eof()) return false;
        c = *pos;
        return true;
    }

    // Reads a single byte.
    bool inline read(char& c) {
        if (peek(c)) {
            ++pos;
            return true;
        }

        return false;
    }

    void inline readStrict(char& c) {
        if (read(c))
            return;
        throwReadAfterEOF();
    }

    // Reads as many as there are, no more than n bytes.
    std::size_t read(char* to, std::size_t n) {
        std::size_t bytes_copied = 0;
        while (bytes_copied < n && !eof()) {
            std::size_t bytes_to_copy = std::min(static_cast<std::size_t>(working_buffer.end() - pos), n - bytes_copied);
            ::memcpy(to + bytes_copied, pos, bytes_to_copy);
            pos += bytes_to_copy;
            bytes_copied += bytes_to_copy;
        }

        return bytes_copied;
    }

    // Reads n bytes, if there are less - throws an exception.
    void readStrict(char* to, std::size_t n) {
        auto read_bytes = read(to, n);
        if (n != read_bytes)
            throw std::runtime_error("Cannot read all data. Bytes read: " + std::to_string(read_bytes) + ". Bytes expected: " + std::to_string(n) + ".");
    }

    // A method that can be more efficiently implemented in derived classes, in the case of reading large enough blocks.
    // The implementation can read data directly into `to`, without superfluous copying, if in `to` there is enough space for work.
    // For example, a CompressedReadBuffer can decompress the data directly into `to`, if the entire decompressed block fits there.
    // By default - the same as read.
    // Don't use for small read
    virtual std::size_t readBig(char* to, std::size_t n) {
        return read(to, n);
    }

    // Do something to allow faster subsequent call to `nextImpl` if possible.
    // It's used for asynchronous readers with double-buffering.
    virtual void prefetch() {}

    // For reading from remote filesystem, when it matters how much we read.
    virtual void setReadUntilPosition(std::size_t /* position */) {}
    virtual void setReadUntilEnd() {}

protected:
    // The number of bytes to ignore from the initial position of `working_buffer` buffer.
    // Apparently this is an additional out-parameter for nextImpl(),
    // not a real field.
    std::size_t nextimpl_working_buffer_offset = 0;

private:
    // Read the next data and fill a buffer with it
    // Return `false` in case of the end, `true` otherwise.
    // Throw an exception if something is wrong
    virtual bool nextImpl() { return false; }

    [[noreturn]] static void throwReadAfterEOF() {
        throw std::runtime_error("Attempt to read after eof");
    }

};