
#include <iostream>
#include "func.hh"

#define _GNU_SOURCE
#include <dlfcn.h>

int main() {

    void* handler1 = dlopen("libfunc1.so", RTLD_LAZY | RTLD_GLOBAL);
    std::cout << "handler1 : " << handler1 << std::endl;
    using func_type = void(*)();
    func_type f1 = (func_type)dlsym(RTLD_NEXT, "func");
    std::cout << "f1: " << (void*)f1 << std::endl;
    f1();
    dlclose(handler1);

    auto p = malloc(1024* 1024);
    void* handler2 = dlopen("libfunc1.so", RTLD_LAZY | RTLD_LOCAL);
    std::cout << "handler2 : " << handler2 << std::endl;
    // using func_type = void(*)();
    func_type f2 = (func_type)dlsym(handler2, "func");
    std::cout << "f2: " << (void*)f2 << std::endl;
    f2();
    dlclose(handler2);


    std::cout << "func: " << (void*)func << std::endl;
    func();


    return 0;
}
