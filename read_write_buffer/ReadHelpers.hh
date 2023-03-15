#pragma once
#include "ReadBuffer.hh"
#include <stdexcept>
#include <string>

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