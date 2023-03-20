#include "ReadHelpers.hh"
#include "StringUtils/StringUtils.hh"
#include <sstream>
#include <stdexcept>
#include "find_symbols.hh"

void inline throwAtAssertionFailed(const char* s, ReadBuffer& buf) {
    std::stringstream out;
    out << "Cannot parse input: expected '" << s;
    if (buf.eof()) {
        out << " at end of stream.";
    } else {
        out << " before: '" << String(buf.position());
    }
    throw std::runtime_error(out.str());
}

bool checkString(const char* s, ReadBuffer& buf) {
    for (; *s; ++s) {
        if (buf.eof() || *s != *buf.position())
            return false;
        ++buf.position();
    }
    return true;
}

bool checkStringCaseInsensitive(const char* s, ReadBuffer& buf) {
    for (; *s; ++s) {
        if (buf.eof())
            return false;

        char c = *buf.position();
        if (!equalsCaseInsensitive(*s, c))
            return false;

        ++buf.position();
    }
    return true;
}

void assertString(const char* s, ReadBuffer& buf) {
    if (!checkString(s, buf)) {
        throwAtAssertionFailed(s, buf);
    }
}

void assertEOF(ReadBuffer& buf) {
    if (!buf.eof()) {
        throwAtAssertionFailed("eof", buf);
    }
}

void assertStringCaseInsensitive(const char* s, ReadBuffer& buf) {
    if (!checkStringCaseInsensitive(s, buf)) {
        throwAtAssertionFailed(s, buf);
    }
}

void skipToNextLineOrEOF(ReadBuffer & buf)
{
    while (!buf.eof())
    {
        char * next_pos = find_first_symbols<'\n'>(buf.position(), buf.buffer().end());
        buf.position() = next_pos;

        if (!buf.hasPendingData())
            continue;

        if (*buf.position() == '\n')
        {
            ++buf.position();
            return;
        }
    }
}

template <typename T>
static void appendToStringOrVector(T & s, ReadBuffer & rb, const char * end)
{
    s.append(rb.position(), end - rb.position());
}

template <typename Vector>
void readStringUntilEOFInto(Vector & s, ReadBuffer & buf)
{
    while (!buf.eof())
    {
        appendToStringOrVector(s, buf, buf.buffer().end());
        buf.position() = buf.buffer().end();
    }
}

void readStringUntilEOF(std::string & s, ReadBuffer & buf)
{
    s.clear();
    readStringUntilEOFInto(s, buf);
}

