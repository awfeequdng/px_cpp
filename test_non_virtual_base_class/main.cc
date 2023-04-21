#include <iostream>

#include <dlfcn.h>

#include "base.hh"
#include "derive.hh"
#include "other.hh"

//
int main() {
    std::cout << "start main" << std::endl;

    DeriveCls* derive = new DeriveCls(10, 20);

    BaseCls* base = dynamic_cast<BaseCls*>(derive);
    BaseCls1* base1 = dynamic_cast<BaseCls1*>(derive);

    int i = base->callc(10);
    int j = base1->callc(10);
    std::cout << "base callc i: " << i << std::endl;
    std::cout << "base callc j: " << j << std::endl;

    DeriveCls d(11, 12);
    std::cout << "d.callc(): " << d.callc(10) << std::endl;


    Other other;
    other.call_other();
    return 0;
}
