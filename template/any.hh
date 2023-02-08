#include <memory>
#include <cxxabi.h>
#include <ostream>
#include <stdexcept>

class Any;
namespace my_std {

class WrapperBase {
public:
    virtual std::unique_ptr<WrapperBase> clone() = 0;
    virtual void output(std::ostream& os) const = 0;
    virtual ~WrapperBase() {}
    friend std::ostream& operator<<(std::ostream& os, const WrapperBase& base) {
        base.output(os);
        return os;
    }
    friend std::ostream& operator<<(std::ostream& os, const WrapperBase* base) {
        base->output(os);
        return os;
    }
};

template<typename T>
class Wrapper : public WrapperBase {
public:
    Wrapper(T d) : data_(d) {}

    std::unique_ptr<WrapperBase> clone() override {
        return std::make_unique<Wrapper<T>>(data_);
    }
    void output(std::ostream& os) const override {
        os << data_;
    }

private:
    friend class Any;
    T data_;
};

class Any {
public:
    Any() {}

    inline void assign(const Any& any) {
        typename_ = any.typename_;
        if (any.wrapper_) {
            wrapper_ = any.wrapper_.get()->clone();
        }
    }
    Any(const Any &any) {
        assign(any);
    }

    Any& operator=(const Any &any) {
        assign(any);
        return *this;
    }

    template <typename T>
    Any(T d) {
        set(d);
    }

    template<typename T>
    void set(T d) {
        typename_ = typeid(T).name();
        if constexpr (std::is_same_v<T, const char *>) {
            wrapper_ = std::make_unique<Wrapper<std::string>>(std::string(d));
        } else {
            wrapper_ = std::make_unique<Wrapper<T>>(d);
        }
    }

    template <typename T>
    const T& get() const {
        auto p = dynamic_cast<Wrapper<T>*>(wrapper_.get());
        if (p) {
            return p->data_;
        } else {
            throw std::logic_error(std::string("get value failed: invalid type: ") + typeid(T).name());
        }
    }

    const std::string& get_typename() const {
        return typename_;
    }

    friend std::ostream& operator << (std::ostream &os, const Any &any) {
        if (any.wrapper_) {
            os << any.wrapper_.get();
        }
        return os;
    }

private:
    std::unique_ptr<WrapperBase> wrapper_;
    std::string typename_;
};

} // namespace my_std