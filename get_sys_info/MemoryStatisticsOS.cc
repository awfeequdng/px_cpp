
#include <stdexcept>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <cassert>
#include <iostream>

#include "MemoryStatisticsOS.hh"

// #include <base/getPageSize.h>
#include "read_write_buffer/ReadBufferFromMemory.hh"
#include "read_write_buffer/ReadHelpers.hh"

static constexpr auto filename = "/proc/self/statm";

MemoryStatisticsOS::MemoryStatisticsOS()
{
    fd = ::open(filename, O_RDONLY | O_CLOEXEC);

    if (-1 == fd)
        throw std::runtime_error("Cannot open file " + std::string(filename));
}

MemoryStatisticsOS::~MemoryStatisticsOS()
{
    if (0 != ::close(fd))
    {
        try
        {
            throw std::runtime_error(
                    "File descriptor for \"" + std::string(filename) + "\" could not be closed. "
                    "Something seems to have gone wrong. Inspect errno.");
        }
        catch (const std::runtime_error &e)
        {
            std::cout << e.what() << std::endl;
        }
    }
}

MemoryStatisticsOS::Data MemoryStatisticsOS::get() const
{
    Data data;

    constexpr size_t buf_size = 1024;
    char buf[buf_size];

    ssize_t res = 0;

    do
    {
        res = ::pread(fd, buf, buf_size, 0);

        if (-1 == res)
        {
            if (errno == EINTR)
                continue;

            throw std::runtime_error("Cannot read from file " + std::string(filename));
        }

        assert(res >= 0);
        break;
    } while (true);

    ReadBufferFromMemory in(buf, res);

    uint64_t unused;
    readIntText(data.virt, in);
    skipWhitespaceIfAny(in);
    readIntText(data.resident, in);
    skipWhitespaceIfAny(in);
    readIntText(data.shared, in);
    skipWhitespaceIfAny(in);
    readIntText(data.code, in);
    skipWhitespaceIfAny(in);
    readIntText(unused, in);
    skipWhitespaceIfAny(in);
    readIntText(data.data_and_stack, in);

    size_t page_size = static_cast<size_t>(::getpagesize());
    data.virt *= page_size;
    data.resident *= page_size;
    data.shared *= page_size;
    data.code *= page_size;
    data.data_and_stack *= page_size;

    return data;
}
