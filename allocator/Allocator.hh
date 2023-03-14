#pragma once
#include <cstddef>
#include <cstdint>
#include <cstdlib>
#include <cstring>
#include <stdexcept>
#include <string>
#include <random>

#include <sys/mman.h>
#include <unistd.h>

#include "mremap.hh"

// function getpagesize have already define in unistd.h
// inline uint64_t getPageSize()
// {
//     uint64_t page_size = sysconf(_SC_PAGESIZE);
//     if (page_size < 0)
//         abort();
//     return page_size;
// }

extern const size_t MMAP_THRESHOLD;

static constexpr size_t MALLOC_MIN_ALIGNMENT = 8;

template <bool clear_memory_, bool mmap_populate>
class Allocator {
public:
    // Allocate memory range.
    void* alloc(std::size_t size, std::size_t alignment = 0) {
        checkSize(size);
        // CurrentMemoryTracker::alloc(size);
        return allocNoTrack(size, alignment);
    }

    // Free memory range.
    void free(void* buf, size_t size) {
        try {
            checkSize(size);
            freeNoTrack(buf, size);
            // CurrentMemoryTracker::dealloc(size);
        } catch (...) {
            // log current exception: "Allocator free failed"
            throw;
        }
    }

    // Enlarge memory range.
    // Data from old range is moved to the beginning of new range.
    // Address of memory range could change.
    void* realloc(void* buf, size_t old_size, size_t new_size, size_t alignment = 0) {
        checkSize(new_size);

        if (old_size == new_size) {
            // nothing to do.
            // BTW, it's not possible to change alignment while doint realloc
        } else if (old_size < MMAP_THRESHOLD && new_size < MMAP_THRESHOLD
                   && alignment <= MALLOC_MIN_ALIGNMENT) {
            // Resize malloc'd memory region with no special alignment requirement.
            // CurrentMemoryTracker::realloc(old_size, new_size);

            void * new_buf = ::realloc(buf, new_size);
            if (nullptr == new_buf)
                throw std::runtime_error("Allocator: Cannot realloc from: " + std::to_string(old_size) + " to: " + std::to_string(new_size));

            buf = new_buf;
            if constexpr (clear_memory)
                if (new_size > old_size)
                    memset(reinterpret_cast<char *>(buf) + old_size, 0, new_size - old_size);
        } else if (old_size >= MMAP_THRESHOLD && new_size >= MMAP_THRESHOLD) {
            /// Resize mmap'd memory region.
            // CurrentMemoryTracker::realloc(old_size, new_size);

            // this clickhouse_mremap come from clickhouse
            // On apple and freebsd self-implemented mremap used (mremap.h)
            buf = clickhouse_mremap(buf, old_size, new_size, MREMAP_MAYMOVE,
                                    PROT_READ | PROT_WRITE, mmap_flags, -1, 0);
            if (MAP_FAILED == buf)
                throw std::runtime_error("Allocator: Cannot mremap memory chunk from :"
                                        + std::to_string(old_size) + "to : "
                                        + std::to_string(new_size));

            /// No need for zero-fill, because mmap guarantees it.
        } else if (new_size < MMAP_THRESHOLD) {
            /// Small allocs that requires a copy. Assume there's enough memory in system. Call CurrentMemoryTracker once.
            // CurrentMemoryTracker::realloc(old_size, new_size);

            void * new_buf = allocNoTrack(new_size, alignment);
            memcpy(new_buf, buf, std::min(old_size, new_size));
            freeNoTrack(buf, old_size);
            buf = new_buf;
        } else {
            /// Big allocs that requires a copy. MemoryTracker is called inside 'alloc', 'free' methods.

            void * new_buf = alloc(new_size, alignment);
            memcpy(new_buf, buf, std::min(old_size, new_size));
            free(buf, old_size);
            buf = new_buf;
        }
        return buf;
    }

protected:
    static constexpr size_t getStackThreshold() {
        return 0;
    }

    static constexpr bool clear_memory = clear_memory_;

    // Freshly mmapped pages are copy-on-write references to a global zero page.
    // On the first write, a page fault occurs, and an actual writable page is
    // allocated. If we are going to use this memory soon, such as when resizing
    // hash tables, it makes sense to pre-fault the pages by passing
    // MAP_POPULATE to mmap(). This takes some time, but should be faster
    // overall than having a hot loop interrupted by page faults.
    // It is only supported on Linux.
    // 我们知道通常我们mmap出来的内存，要不是匿名页面，要不就是文件的映射。当访问这块线性地址
    // 的时候，如果需要的页面不在内存中，就会发生缺页中断，内核分配物理内存，如果是文件后背的
    // 话，顺手把文件读进来。这样在高性能服务器里面分配内存的动作就会成为问题。
    static constexpr int mmap_flags = MAP_PRIVATE | MAP_ANONYMOUS
            | (mmap_populate ? MAP_POPULATE : 0) // 我们只在linux系统下面做开发，所以直接使用该属性
// #if defined(OS_LINUX)
//         | (mmap_populate ? MAP_POPULATE : 0)
// #endif
        ;

private:
    void* allocNoTrack(std::size_t size, size_t alignment) {
        void* buf;
        size_t mmap_min_alignment = getpagesize();

        if (size >= MMAP_THRESHOLD) {
            if (alignment > mmap_min_alignment)
                throw std::runtime_error("Too large alignment:" + std::to_string(alignment) +
                                         "more than page size when allocating:" + std::to_string(size));

            buf = mmap(getMmapHint(), size, PROT_READ | PROT_WRITE, mmap_flags, -1, 0);

            if (MAP_FAILED == buf) {
                throw std::runtime_error("Allocator: Cannot mmap: " + std::to_string(size));
            }

            // No need for zero-fill, because mmap gurantees it.
        } else {
            if (alignment <= MALLOC_MIN_ALIGNMENT) {
                if constexpr (clear_memory) {
                    buf = ::calloc(size, 1);
                } else {
                    buf = ::malloc(size);
                }

                if (nullptr == buf) {
                    throw std::runtime_error("Allocator: Cannot malloc: " + std::to_string(size));
                }
            } else {
                buf = nullptr;
                int res = posix_memalign(&buf, alignment, size);

                if (0 != res) {
                    throw std::runtime_error("Cannot allocate memory (posix_memalign) : " + std::to_string(size) +
                                             ", and error code: " + std::to_string(res));
                }
                if constexpr (clear_memory) {
                    memset(buf, 0, size);
                }
            }
        }
        return buf;
    }

    void freeNoTrack(void* buf, size_t size) {
        if (size >= MMAP_THRESHOLD) {
            if (0 != munmap(buf, size)) {
                throw std::runtime_error("Allocator: Cannot munmap: " +
                                         std::to_string(size));
            }
        } else {
            ::free(buf);
        }
    }

    void checkSize(std::size_t size) {
        // More obvious exception in case of possible overflow (instead of just "can't mmap").
        if (size >= 0x8000000000000000ULL)
            throw std::runtime_error("Too large size:" + std::to_string(size) + " passed to allocator."
                                     " It indicates an error.");
    }

#ifndef NDEBUG
    // In debug builds, request mmap() at random addresses (a kind of ASLR), to
    // reproduce more memory stomping bugs. Note that Linux doesn't do it by
    // default. This may lead to worse TLB performance
    void* getMmapHint() {
        // clickhouse 的随机数产生方法，我们占时不用
        // return reinterpret_cast<void *>(std::uniform_int_distribution<intptr_t>(0x100000000000UL, 0x700000000000UL)(thread_local_rng));

        static std::random_device rd; // Will be used to obtain a seed for the random number engine
        static std::mt19937 gen(rd()); // Standard mersenne_twister_engine seeded with rd()
        return reinterpret_cast<void*>(std::uniform_int_distribution<intptr_t>(0x100000000000UL, 0x700000000000UL)(gen));
    }
#else
    void* getMmapHint() {
        return nullptr;
    }
#endif
};

// when using AllocatorWithStackMemory, located on the stack,
// GCC 4.9 mistakenly assumes that we can call `free` from a pointer to the stack.
// In fact, the combination of conditions inside AllocatorWithStackMemory does not allow this.
#if !defined (__clang__)
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wfree-nonheap-object"
#endif


/** Allocator with optimization to place small memory ranges in automatic memory.
  */
template <typename Base, size_t _initial_bytes, size_t Alignment>
class AllocatorWithStackMemory : private Base
{
private:
    alignas(Alignment) char stack_memory[_initial_bytes];

public:
    static constexpr size_t initial_bytes = _initial_bytes;

    /// Do not use boost::noncopyable to avoid the warning about direct base
    /// being inaccessible due to ambiguity, when derived classes are also
    /// noncopiable (-Winaccessible-base).
    AllocatorWithStackMemory(const AllocatorWithStackMemory&) = delete;
    AllocatorWithStackMemory & operator = (const AllocatorWithStackMemory&) = delete;
    AllocatorWithStackMemory() = default;
    ~AllocatorWithStackMemory() = default;

    void * alloc(size_t size)
    {
        if (size <= initial_bytes)
        {
            if constexpr (Base::clear_memory)
                memset(stack_memory, 0, initial_bytes);
            return stack_memory;
        }

        return Base::alloc(size, Alignment);
    }

    void free(void * buf, size_t size)
    {
        if (size > initial_bytes)
            Base::free(buf, size);
    }

    void * realloc(void * buf, size_t old_size, size_t new_size)
    {
        /// Was in stack_memory, will remain there.
        if (new_size <= initial_bytes)
            return buf;

        /// Already was big enough to not fit in stack_memory.
        if (old_size > initial_bytes)
            return Base::realloc(buf, old_size, new_size, Alignment);

        /// Was in stack memory, but now will not fit there.
        void * new_buf = Base::alloc(new_size, Alignment);
        memcpy(new_buf, buf, old_size);
        return new_buf;
    }

protected:
    static constexpr size_t getStackThreshold()
    {
        return initial_bytes;
    }
};


// A constant that gives the number of initially available bytes in
// the allocator. Used to check that this number is in sync with the
// initial size of array or hash table that uses the allocator.
template<typename TAllocator>
constexpr size_t allocatorInitialBytes = 0;

template<typename Base, size_t initial_bytes, size_t Alignment>
constexpr size_t allocatorInitialBytes<AllocatorWithStackMemory<
    Base, initial_bytes, Alignment>> = initial_bytes;

/// Prevent implicit template instantiation of Allocator

extern template class Allocator<false, false>;
extern template class Allocator<true, false>;
extern template class Allocator<false, true>;
extern template class Allocator<true, true>;

#if !defined(__clang__)
#pragma GCC diagnostic pop
#endif