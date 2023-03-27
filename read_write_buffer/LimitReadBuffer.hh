#pragma once

#include "ReadBuffer.hh"
#include "base/types.hh"
#include <memory>

class LimitReadBuffer : public ReadBuffer {
public:
    LimitReadBuffer(ReadBuffer& _in, UInt64 limit_, bool throw_exception_, std::string exception_message_ = {});
    LimitReadBuffer(std::unique_ptr<ReadBuffer> _in, UInt64 limit_, bool throw_exception_, std::string exception_message_ = {});
    ~LimitReadBuffer() override;

private:
    ReadBuffer *in;
    bool owns_in;

    UInt64 limit;
    bool throw_exception;
    std::string exception_message;

    LimitReadBuffer(ReadBuffer* in_, bool owns, UInt64 limit_, bool throw_exception_, std::string exception_message_);

    bool nextImpl() override;
};