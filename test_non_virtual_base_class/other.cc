#include "other.hh"
#include <iostream>

void Other::call_other() {
    int a = derive->callc(10);
    std::cout << "call other : " << a << std::endl;
}