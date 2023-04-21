#pragma once

#include "derive.hh"

class Other {
public:
    Other(): derive{new DeriveCls(10, 12)} {}
    ~Other() {
        delete derive;
    }
    void call_other();

private:
    DeriveCls *derive;
};
