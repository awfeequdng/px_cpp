#pragma once

#include <string>
#include <ostream>

#include "wide_integer.hh"

namespace wide {

template <size_t Bits, typename Signed>
inline std::string to_string(const integer<Bits, Signed>& n) {
    std::string res;
    if (integer<Bits, Signed>::_impl::operator_eq(n, 0U)) {
        return "0";
    }

    integer<Bits, unsigned> t;
    bool is_neg = integer<Bits, Signed>::_impl::is_negative(n);
    if (is_neg) {
        t = integer<Bits, Signed>::_impl::operator_unary_minus(n);
        // t = -n;
    } else {
        t = n;
    }

    while (!integer<Bits, unsigned>::_impl::operator_eq(t, 0U)) {
        res.insert(res.begin(), '0' + char(integer<Bits, unsigned>::_impl::operator_percent(t, 10U)));
        t = integer<Bits, unsigned>::_impl::operator_slash(t, 10U);
    }
    if (is_neg)
        res.insert(res.begin(), '-');
    return res;
}

} // namespace wide

template <size_t Bits, typename Signed>
std::ostream& operator << (std::ostream& out, const wide::integer<Bits, Signed>& value) {
    return out << to_string(value);
}