#pragma once

#include "ReadBuffer.hh"
#include "base/types.hh"

#include <stdexcept>

// // Read UInt64, written in variable length format (base128)
// void readVarUInt(UInt64 x, std::istream& istr);
// void readVarUInt(UInt64 x, ReadBuffer& istr);
// const char* readVarUInt(UInt64 x, const char* istr, size_t size);

// // Get the length of UInt64 in VarUInt format
// size_t getLengthOfVarUInt(UInt64 x);

// // Get the length of Int64 in VarInt format
// size_t getLengthOfVarInt(Int64 x);

[[noreturn]] inline void throwReadAfterEOF()
{
    throw std::runtime_error("Attempt to read after eof");
}
