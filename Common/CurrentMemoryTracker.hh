#pragma once

#include "base/types.hh"

namespace CurrentMemoryTracker {
    void alloc(Int64 size);
    void allocNoThrow(Int64 size);
    void realloc(Int64 old_size, Int64 new_size);
    void free(Int64 size);
    void check();
} // namespace CurrentMemoryTracker
