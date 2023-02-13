#pragma once

#include <iostream>

struct X {
    X() = default;

    X(const X &arg)
    {
        printf("func: %s;this: %p;arg: %p\n", __PRETTY_FUNCTION__,
               this,&arg);
        return ;
    }

    X(X &&arg)
    {
        printf("func: %s;this: %p;arg: %p\n", __PRETTY_FUNCTION__,
               this,&arg);
        return ;
    }
};
