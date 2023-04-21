
#pragma once

class BaseCls {
public:
    BaseCls(int a): a_(a) {}

    virtual int callc(int i);
    virtual int add() { return 22; }
private:
    int a_;
    int c_;
    int d_;
    double i,j;
};

class BaseCls1 {
public:
    BaseCls1() {}
    ~BaseCls1() {}
    virtual int callc(int i);
    virtual int add() { return 11; }
private:
    int e_;
    int cd_;
    double i, j,k;
    double h;
    // double l;
};
