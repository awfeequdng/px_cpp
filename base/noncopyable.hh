#pragma once

class noncopyable {
public:
    noncopyable() {}
    ~noncopyable() {}
    noncopyable(const noncopyable&) = delete;
    // noncopyable(noncopyable&&) = delete;

    const noncopyable& operator=(const noncopyable&) = delete;
    // noncopyable& operator=(noncopyable&&) = delete;
};
