#pragma once

#include "BufferBase.hh"

#include <algorithm>
#include <cstring>
#include <stdexcept>
#include <cassert>
#include <memory>

// A simple abstract class for buffered data writing (char sequences) somewhere.
// Unlike std::ostream, it provides access to the internal buffer,
// and also allows you to manually manage the position inside the buffer.

// Derived classes must implement the nextImpl() method
class WriteBuffer : public BufferBase {
public:
    WriteBuffer(Position ptr, size_t size) : BufferBase(ptr, size, 0) {}

    using BufferBase::set;
    void set(Position ptr, size_t size) { BufferBase::set(ptr, size, 0); }

    // Write the data in the buffer (from the beginning of the buffer to the current position);
    // set the position to the beginning; throw an exception, if something is wrong
    inline void next() {
        if (!offset()) {
            return;
        }
        bytes += offset();
        try {
            nextImpl();
        } catch(...) {
            // If the nextImpl() call was unsuccessful, move the cursor to the beginning,
            // so that later (for example, when the stack was expanded) there was no second attempt to write data.
            pos = working_buffer.begin();
            throw;
        }
        pos = working_buffer.begin();
    }

    virtual ~WriteBuffer() = default;

    inline void nextIfAtEnd() {
        if (!hasPendingData()) {
            next();
        }
    }

    void write(const char* from, size_t n) {
        if (finalized) {
            throw std::runtime_error("Cannot write to finalized buffer");
        }

        size_t bytes_copied = 0;

        assert(!working_buffer.empty());

        // Produces endless loop
        while (bytes_copied < n) {
            nextIfAtEnd();
            size_t bytes_to_copy = std::min(static_cast<size_t>(working_buffer.end() - pos), n - bytes_copied);
            memcpy(pos, from + bytes_copied, bytes_to_copy);
            pos += bytes_to_copy;
            bytes_copied += bytes_to_copy;
        }
    }

    inline void write(char x) {
        if (finalized) {
            throw std::runtime_error("Cannot write to finalized buffer.");
        }

        nextIfAtEnd();
        *pos = x;
        ++pos;
    }

    // This method may be called before finalize() to tell there would not be any more data written.
    // Used does not have to call it, implementation should check it itself if needed.

    // The idea is similar to prefetch. In case if all data is written, we can flush the buffer
    // and start sending data asynchronously. It may improve writing performance in case you have multiple files to finalize. Mainly, for blob storage, finalization has high latency,
    // and calling perFinalize in a loop may parallelize it
    virtual void preFinalize() {
        next();
    }

    // Write the last data
    void finalize() {
        if (finalized) {
            return;
        }
        // finalize() is often called from destructors.
        // LockMemoryExceptionInThread lock(VariableContext::Global);
        try {
            finalizeImpl();
            finalized = true;
        } catch (...) {
            pos = working_buffer.begin();
            finalized = true;
            throw;
        }
    }

    // Wait for data to be reliably written. Mainly, call fsync for fd.
    // May be called after finalize() if needed.
    virtual void sync() {
        next();
    }


protected:
    virtual void finalizeImpl() {
        next();
    }

    bool finalized = false;

private:
    // Write the data in the buffer (from the beginning of the buffer to the current position).
    // Throw an exception if something is wrong.
    virtual void nextImpl() {
        throw std::runtime_error("Cannot write after end of buffer.");
    }
};

using WriteBufferPtr = std::shared_ptr<WriteBuffer>;
