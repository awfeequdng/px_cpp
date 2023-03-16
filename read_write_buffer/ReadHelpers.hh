#pragma once
#include <stdexcept>
#include <string>

#include "ReadBuffer.hh"
#include "VarInt.hh"
#include "base/unit.hh"

static constexpr auto DEFAULT_MAX_STRING_SIZE = 1_GiB;;

/// Helper functions for formatted input.

inline char parseEscapeSequence(char c)
{
    switch (c)
    {
        case 'a':
            return '\a';
        case 'b':
            return '\b';
        case 'e':
            return '\x1B';      /// \e escape sequence is non standard for C and C++ but supported by gcc and clang.
        case 'f':
            return '\f';
        case 'n':
            return '\n';
        case 'r':
            return '\r';
        case 't':
            return '\t';
        case 'v':
            return '\v';
        case '0':
            return '\0';
        default:
            return c;
    }
}

/// These functions are located in VarInt.h
/// inline void throwReadAfterEOF()

inline void readChar(char & x, ReadBuffer & buf)
{
    if (!buf.eof())
    {
        x = *buf.position();
        ++buf.position();
    }
    else
        throwReadAfterEOF();
}

/// Read POD-type in native format
template <typename T>
inline void readPODBinary(T& x, ReadBuffer & buf)
{
    buf.readStrict(reinterpret_cast<char *>(&x), sizeof(x));
}

template <typename T>
inline void readIntBinary(T& x, ReadBuffer & buf)
{
    readPODBinary(x, buf);
}

template <typename T>
inline void readFloatBinary(T& x, ReadBuffer & buf)
{
    readPODBinary(x, buf);
}

// inline void readStringBinary(std::string& s, ReadBuffer& buf, size_t MAX_STRING_SIZE = DEFAULT_MAX_STRING_SIZE) {

// }

inline bool checkChar(char c, ReadBuffer& buf) {
    char a;
    if (!buf.peek(a) || a != c) {
        return false;
    }
    buf.ignore();
    return true;
}

inline void assertChar(char symbol, ReadBuffer& buf) {
    if (!checkChar(symbol, buf)) {
        throw std::runtime_error("assertChar failed, expect " + std::to_string(symbol));
    }
}

/// Skip to next character after next \n. If no \n in stream, skip to end.
void skipToNextLineOrEOF(ReadBuffer & buf);

void readStringUntilEOF(std::string & s, ReadBuffer & buf);