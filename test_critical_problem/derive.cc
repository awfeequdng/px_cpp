#include "derive.hh"

int DeriveCls::callc(int i) {
    int sum1 = 1101;
    for (int k = 0; k < i; k++) {
        sum1 -= k;
        sum1 += i;
    }
    return sum1;
}

int DeriveCls::add() {
    return b_ + 1;
}