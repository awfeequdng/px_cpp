#include <iostream>
#include <string>
#include <unordered_map>
#include <iostream>

// 对using的使用的博文地址
// https://zhuanlan.zhihu.com/p/615989391

class Base {
public:
    Base() {}
    void fun() {
        std::cout << "base fun()" << std::endl;
    }
    void fun(int n) {
        std::cout << "base fun(int n)" << std::endl;
    }
    void fun(std::string str) {
        std::cout << "base fun(std::string str)" << std::endl;
    }
    void fun(int n, std::string str) {
        std::cout << "base fun(int n, std::string str)" << std::endl;
    }

    virtual void fun1() {
        std::cout << "base virtual fun1(int n, std::string str)" << std::endl;
    }

    virtual void fun1(int n) {
        std::cout << "base virtual fun1(int n)" << std::endl;
    }

    virtual void fun1(std::string str) {
        std::cout << "base virtual fun1(std::string str)" << std::endl;
    }

    virtual void fun1(int n, std::string str) {
        std::cout << "base virtual fun1(int n, std::string str)" << std::endl;
    }
};

class Derived :  public Base {
public:
    Derived() {}
    using Base::fun;
    using Base::fun1;

    void fun(int n) {
        std::cout << "derived fun(int n)" << std::endl;
    }
    void fun(std::string str) {
        std::cout << "derived fun(std::string)" << std::endl;
    }

    void fun1(int n) override {
        std::cout << "derived virtual fun1(int n)" << std::endl;
    }
};

int main() {
    Derived derived;

    derived.fun(2);
    derived.fun1(2);

    derived.fun();
    derived.fun("str");
    derived.fun1();
    return 0;
}
