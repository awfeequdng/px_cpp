#include "WriteBufferFromFile.hh"

WriteBufferFromFile::WriteBufferFromFile(
    const std::string& file_name_,
    size_t buf_size,
    int flags,
    mode_t mode,
    char* exis
)