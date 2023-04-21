#pragma once

#include "base.hh"

class DeriveCls : public BaseCls1, public BaseCls {
public:
    DeriveCls(int a, int b) : BaseCls(a), b_(b) {}

    __attribute__((__noinline__)) int callc(int i) override;

    int add() override;
private:
    int b_;
};

extern "C" BaseCls* getDerive(int a, int b);
