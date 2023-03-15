#pragma once

#include <cstdint>
#include <memory>

/// Find the address and size of the mapped memory region pointed by ptr.
/// Throw exception if not found.
std::pair<void *, std::size_t> getMappedArea(void * ptr);

// Get all mapped area
std::string getMappedArea();
