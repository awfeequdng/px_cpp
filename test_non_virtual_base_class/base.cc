
#include "base.hh"

int BaseCls::callc(int i) {
    int sum = 0;
    for (int k = 0; k < i; k++) {
        sum+= k;
    }
    return sum;
}

int BaseCls1::callc(int i) {
    int sum1 = 110;
    for (int k = 0; k < i; k++) {
        sum1-= k;
    }
    return sum1;
}