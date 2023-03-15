#include "ReadHelpers.hh"

// todo: find_symbols.hh这个文件还没看他的实现
#include "find_symbols.hh"

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

