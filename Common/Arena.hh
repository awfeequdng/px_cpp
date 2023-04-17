#pragma once

#include <cstring>
#include <memory>
#include <vector>

// #include "defines.hh"
#include "Allocator.hh"
#include "memcpySmall.hh"
#include "ProfileEvents.hh"
#include "noncopyable.hh"
namespace ProfileEvents
{
    extern const Event ArenaAllocChunks;
    extern const Event ArenaAllocBytes;
}

/** Memory pool to append something. For example, short strings.
  * Usage scenario:
  * - put lot of strings inside pool, keep their addresses;
  * - addresses remain valid during lifetime of pool;
  * - at destruction of pool, all memory is freed;
  * - memory is allocated and freed by large MemoryChunks;
  * - freeing parts of data is not possible (but look at ArenaWithFreeLists if you need);
  */
class Arena : private noncopyable {
private:

};
