#pragma once
#include <atomic>

namespace my_shared_ptr {

class __attribute__((__visibility__("default"))) __shared_count {
    __shared_count(const __shared_count&);
    __shared_count& operator=(const __shared_count&);

protected:
    std::atomic<long> __shared_owners_;
    virtual ~__shared_count();

private:
    // 引用计数变为0的回调，一般是进行内存释放
    virtual void __on_zero_shared() noexcept = 0;

public:
    explicit __shared_count(long __refs = 0) noexcept
        : __shared_owners_(__refs) {}

    // 增加共享计数
    void __add_shared() noexcept {
        // __shared_owners_.fetch_add(1, std::memory_order_relaxed);
        __shared_owners_++;
    }

    // 释放共享计数，如果共享计数为0（这里的值为-1表示共享计数为0了），则调用__on_zero_shared进行内存释放
    bool __release_shared() noexcept {
        if (--__shared_owners_ == -1) {
            __on_zero_shared();
            return true;
        }
        return false;
    }

    // 返回引用计数，需要对内部存储的引用计数+1处理
    long use_count() const noexcept {
        return __shared_owners_.load(std::memory_order_relaxed) + 1;
    }
};

class __shared_weak_count : private __shared_count {
    // weak prt计数
    std::atomic<long> __shared_weak_owners_;

public:
    // 内部共享计数和weak计数都为0
    explicit __shared_weak_count(long __refs = 0) noexcept
        : __shared_count(__refs),
          __shared_weak_owners_(__refs) {}

protected:
    virtual ~__shared_weak_count();

public:
    // 调用通过父类的__add_shared,增加共享引用计数
    void __add_shared() noexcept {
        __shared_count::__add_shared();
    }

    void __add_weak() noexcept {
        __shared_weak_owners_++;
    }

    // 调用父类的__release_shared, 如果释放了原生指针内存，还需要调用__release_wak, 因为内部weak计数默认为0
    void __release_shared() noexcept {
        if (__shared_count::__release_shared()) {
            __release_weak();
        }
    }

    // weak 引用计数减1
    long __release_weak() noexcept;

    // 获取共享计数
    long use_count() const noexcept {
        return __shared_count::use_count();
    }
    __shared_weak_count* lock() noexcept;

private:
    // weak 计数为0的处理函数
    virtual void __on_zero_shared_weak() noexcept = 0;
};

template<typename _Tp>
class __shared_ptr_pointer
    : public __shared_weak_count
{
    _Tp __data_;
public:
    __shared_ptr_pointer(_Tp __p) : __data_(__p) {}

private:
    void __on_zero_shared() noexcept override;
    void __on_zero_shared_weak() noexcept override;
};

template<typename _Tp>
class shared_ptr {
public:
    using element_type = _Tp;

private:
    element_type* __ptr_;
    // __shared_weak_count* __cntrl_;
};

} // my_shared_ptr