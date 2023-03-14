#pragma once

#include <cstddef>

#include "read_write_config.hh"

#include "my_concepts.hh"
#include "allocator/Allocator.hh"

template <typename Allocator = Allocator<false>>
struct Memory : Allocator {
    Memory(const Memory&) = delete;
    Memory &operator=(const Memory&) = delete;

    // Padding is needed to allow usage of `memcpySmallAllowReadWriteOverflow15` function with this buffer.
    static constexpr std::size_t pad_right = 15;

    size_t m_capacity = 0; // with padding.
    size_t m_size = 0;
    char*  m_data = nullptr;
    size_t alignment = 0;

    Memory() = default;

    explicit Memory(std::size_t size_, size_t alignment_ = 0)
        : m_capacity(size_), m_size(size_), alignment(alignment_) {
        alloc();
    }

    ~Memory() {
        dealloc();
    }

    void swap(Memory& rhs) noexcept {
        std::swap(m_capacity, rhs.m_capacity);
        std::swap(m_size, rhs.m_size);
        std::swap(m_data, rhs.m_data);
        std::swap(alignment, rhs.alignment);
    }

    Memory(Memory&& rhs) noexcept {
        swap(rhs);
    }

    Memory& operator=(Memory&& rhs) noexcept {
        swap(rhs);
        return *this;
    }

    size_t size() const { return m_size; }
    const char& operator[](size_t i) const { return m_data[i]; }
    char& operator[](size_t i) { return m_data[i]; }
    const char* data() const { return m_data; }
    char* data() { return m_data; }

    void resize(size_t new_size) {
        if (0 == m_capacity) {
            m_size = new_size;
            m_capacity = new_size;
            alloc();
        } else if (new_size <= m_capacity - pad_right) {
            m_size = new_size;
            return;
        } else {
            size_t new_capacity = align(new_size, alignment) + pad_right;

            size_t diff = new_capacity - m_capacity;

            m_data = static_cast<char*>(Allocator::realloc(m_data, m_capacity, new_capacity, alignment));
            m_capacity = new_capacity;
            m_size = m_capacity - pad_right;
        }
    }

private:
    static size_t align(const size_t value, const size_t alignment) {
        if (!alignment)
            return value;

        if (!(value % alignment))
            return value;

        return (value + alignment - 1) / alignment * alignment;
    }

    void alloc() {
        if (!m_capacity) {
            m_data = nullptr;
            return;
        }

        size_t new_capacity = align(m_capacity, alignment) + pad_right;
        m_data = static_cast<char*>(Allocator::alloc(new_capacity, alignment));
        m_capacity = new_capacity;
        m_size = m_capacity - pad_right;
    }

    void dealloc() {
        if (!m_data)
            return;

        Allocator::free(m_data, m_capacity);
        m_data = nullptr; // to avoid double free if next alloc will throw an exception.
    }
};

// Buffer that could own its working memory.
// Template parameter: ReadBuffer or WriteBuffer
template <ReadWriteBuffer Base>
class BufferWithOwnMemory : public Base {
protected:
    Memory<> memory;
public:
    // If non-nullptr `existing_memory` is passed, then buffer will not create its own memory and will use existing_memory with ownership.
    explicit BufferWithOwnMemory(size_t size = IO_DEFAULT_BUFFER_SIZE, char* existing_memory = nullptr, size_t alignment = 0)
        : Base(nullptr, 0), memory(existing_memory ? 0 : size, alignment) {
        Base::set(existing_memory ? existing_memory : memory.data(), size);
        Base::padded = !existing_memory;
    }
};



/** Buffer that could write data to external memory which came from outside
  * Template parameter: ReadBuffer or WriteBuffer
  */
template <ReadWriteBuffer Base>
class BufferWithOutsideMemory : public Base
{
protected:
    Memory<> & memory;
public:

    explicit BufferWithOutsideMemory(Memory<> & memory_)
        : Base(memory_.data(), memory_.size()), memory(memory_)
    {
        Base::set(memory.data(), memory.size(), 0);
        Base::padded = false;
    }

    size_t getActualSize()
    {
        return Base::count();
    }

private:
    void nextImpl() override final
    {
        const size_t prev_size = Base::position() - memory.data();
        memory.resize(2 * prev_size + 1);
        Base::set(memory.data() + prev_size, memory.size() - prev_size, 0);
    }
};