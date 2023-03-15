#include "getMappedArea.hh"

#include "read_write_buffer/ReadBufferFromFile.hh"
#include "read_write_buffer/ReadHelpers.hh"
#include "hex/hex.hh"
#include "StringUtils/StringUtils.hh"
#include <cstdint>
#include <stdexcept>
#include <string>
#include <utility>

namespace  {

uintptr_t readAddressHex(ReadBuffer& in) {
    uintptr_t res = 0;
    while (!in.eof()) {
        if (isHexDigit(*in.position())) {
            res *= 16;
            res += unhex(*in.position());
            ++in.position();
        } else
            break;
    }
    return res;
}

}

std::pair<void*, size_t> getMappedArea(void* ptr) {
    uintptr_t uintptr = reinterpret_cast<uintptr_t>(ptr);
    ReadBufferFromFile in("/proc/self/maps");

    while (!in.eof()) {
        uintptr_t begin = readAddressHex(in);
        assertChar('-', in);
        uintptr_t end = readAddressHex(in);
        skipToNextLineOrEOF(in);

        if (begin <= uintptr && uintptr < end) {
            return {reinterpret_cast<void*>(begin), end - begin};
        }
    }

    throw std::runtime_error("Cannot find mapped area for pointer: " + getHexUIntUppercase(uintptr));
}

std::string getMappedArea() {
    ReadBufferFromFile in("/proc/self/maps");
    std::string maps;
    readStringUntilEOF(maps, in);

    return maps;
}
