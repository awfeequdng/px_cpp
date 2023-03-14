#include "ReadBufferFromIStream.hh"
#include <stdexcept>


bool ReadBufferFromIStream::nextImpl()
{
    istr.read(internal_buffer.begin(), internal_buffer.size());
    size_t gcount = istr.gcount();

    if (!gcount)
    {
        if (istr.eof())
            return false;

        if (istr.fail())
            throw std::runtime_error("Cannot read from istream at offset " + std::to_string(count()));

        throw std::runtime_error("Unexpected state of istream at offset " + std::to_string(count()));
    }
    else
        working_buffer.resize(gcount);

    return true;
}

ReadBufferFromIStream::ReadBufferFromIStream(std::istream & istr_, size_t size)
    : BufferWithOwnMemory<ReadBuffer>(size), istr(istr_)
{
}

