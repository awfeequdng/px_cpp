#pragma once
#include <atomic>
#include <cstddef>
#include <memory>
#include <type_traits>

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
void __shared_ptr_pointer<_Tp>::__on_zero_shared() noexcept {
    // dealloc __data_
}

template<typename _Tp>
void __shared_ptr_pointer<_Tp>::__on_zero_shared_weak() noexcept {
    // dealloc control block
}

template<typename _Tp, typename _Up>
struct __compatible_with : std::is_constructible<std::remove_extent_t<_Tp>*, std::remove_extent_t<_Up>*> {};

template<typename _Tp> class weak_ptr;

template<typename _Tp>
class shared_ptr {
public:
    using element_type = _Tp;

private:
    element_type* __ptr_;
    __shared_weak_count* __cntrl_;
    struct __nat { int __for_bool_; };
public:
    constexpr shared_ptr() noexcept;
    constexpr shared_ptr(std::nullptr_t) noexcept;
    template<typename _Yp>
    explicit shared_ptr(_Yp* __p,
                        std::enable_if_t<__compatible_with<_Yp, element_type>::value, __nat> = __nat());

    shared_ptr(const shared_ptr& __r) noexcept;
    template<typename _Yp>
    shared_ptr(const shared_ptr<_Yp>& __r,
               std::enable_if_t<__compatible_with<_Yp, element_type>::value, __nat> = __nat()) noexcept;

    shared_ptr(const shared_ptr&& __r) noexcept;
    template<typename _Yp>
    shared_ptr(const shared_ptr<_Yp>&& __r,
               std::enable_if_t<__compatible_with<_Yp, element_type>::value, __nat> = __nat()) noexcept;

    template<typename _Yp>
    explicit shared_ptr(const weak_ptr<_Yp>& __r,
                        std::enable_if_t<std::is_convertible<_Yp*, element_type*>::value, __nat> = __nat());

    shared_ptr& operator=(const shared_ptr& __r) noexcept;
    template<typename _Yp>
    std::enable_if_t<__compatible_with<_Yp, element_type>::value, shared_ptr&>
        operator=(shared_ptr<_Yp>& __r) noexcept;
    template<typename _Yp>
    std::enable_if_t<__compatible_with<_Yp, element_type>::value, shared_ptr&>
        operator=(shared_ptr<_Yp>&& __r) noexcept;

    void swap(shared_ptr& __r) noexcept;
    void reset() noexcept;
    template<typename _Yp>
    std::enable_if_t<__compatible_with<_Yp, element_type>::value> reset(_Yp* __p);

    element_type* get() const noexcept { return __ptr_; }

    std::add_lvalue_reference_t<element_type> operator*() const noexcept {
        return *__ptr_;
    }
    element_type* operator->() const noexcept {
        static_assert(!std::is_array<_Tp>::value,
                     "shared_ptr<T>::operator-> is noly valid when T is not an array type.");
        return __ptr_;
    }

    long use_count() const noexcept {
        return __cntrl_ ? __cntrl_->use_count() : 0;
    }

    bool unique() const noexcept { return use_count() == 1; }

    explicit operator bool() const noexcept { return get() != nullptr; }

    std::add_lvalue_reference_t<_Tp> operator[](ptrdiff_t __i) const {
        static_assert(std::is_array<_Tp>::value,
                     "shared_ptr<T>::operator[] is only valid when T is an array type.");
        return __ptr_[__i];
    }


    template<typename _Yp, typename _CntrlBlk>
    static shared_ptr<_Tp>
    __create_with_control_block(_Yp* __p, _CntrlBlk *_cntrl) noexcept {
        shared_ptr<_Tp> __r;
        __r.__ptr_ = __p;
        __r.__cntrl_ = _cntrl;
        __r.__enable_weak_this(__r.__ptr_, __r.__ptr_);
        return __r;
    }
private:

    // todo: 为什么需要__enable_weak_this
    template<typename _Yp, typename _OrigPtr>
    std::enable_if_t<std::is_convertible<_OrigPtr*,
                                         const std::enable_shared_from_this<_Yp>*
                                        >::value>
    __enable_weak_this(const std::enable_shared_from_this<_Yp>* __e,
                      _OrigPtr* __ptr) noexcept {
        using _RawYp = std::remove_cv_t<_Yp>;
        if (__e && __e->__weak_this_.expired()) {
            __e->__weak_this = shared_ptr<_RawYp>(*this,
                const_cast<_RawYp*>(static_cast<const _Yp*>(__ptr)));
        }
    }
    void __enable_weak_this(...) noexcept {}

    template<typename _Up> friend class shared_ptr;
    template<typename _Up> friend class weak_ptr;
};

} // my_shared_ptr