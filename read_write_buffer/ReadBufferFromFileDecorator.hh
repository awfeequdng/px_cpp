#pragma once
#include "ReadBufferFromFileBase.hh"

#include "base/types.hh"

#include <memory>
#include <sys/types.h>
class ReadBufferFromFileDecorator : public ReadBufferFromFileBase {
public:
    explicit ReadBufferFromFileDecorator(std::unique_ptr<SeekableReadBuffer> impl_);
    ReadBufferFromFileDecorator(std::unique_ptr<SeekableReadBuffer> impl_, const String& file_name_);

    std::string getFileName() const override;

    off_t getPosition() override;

    off_t seek(off_t offset, int whence) override;

    bool nextImpl() override;

protected:
    std::unique_ptr<SeekableReadBuffer> impl;
    String file_name;
};