#pragma once

#include <iostream>

struct X1 {
    X1() = default;

    X1(const X1 &arg)
    {
        printf("func: %s;this: %p;arg: %p\n", __PRETTY_FUNCTION__,
               this,&arg);
        return ;
    }

    X1(X1 &&arg) noexcept
    {
        printf("func: %s;this: %p;arg: %p\n", __PRETTY_FUNCTION__,
               this,&arg);
        return ;
    }
};
