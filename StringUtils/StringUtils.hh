#pragma once

#include <string_view>
#include <string>
#include <algorithm>
#include <cstdint>
#include <type_traits>

// Given an integer, return the adequate suffix for
// printing an ordinal number.
template <typename T>
std::string getOrdinalSuffix(T n) {
    static_assert(std::is_integral_v<T> && std::is_unsigned_v<T>,
        "Unsigned integer value required");

    const auto last_digit = n % 10;
    if ((last_digit < 1 || last_digit > 3)
        || ((n > 10) && ((n / 10) % 10) == 1))
        return "th";

    switch (last_digit) {
        case 1: return "st";
        case 2: return "nd";
        case 3: return "rd";
        default: return "th";
    }
}

// More efficient than libc, because doesn't respect locale, But for some functions table implementation could be better.

inline bool isASCII(char c) {
    return static_cast<unsigned char>(c) < 0x80;
}

inline bool isLowerAlphaASCII(char c) {
    return (c >= 'a' && c <= 'z');
}

inline bool isUpperAlphaASCII(char c) {
    return (c >= 'A' && c <= 'Z');
}

inline bool isAlphaASCII(char c) {
    return isLowerAlphaASCII(c) || isUpperAlphaASCII(c);
}

inline bool isNumericASCII(char c)
{
    /// This is faster than
    /// return UInt8(UInt8(c) - UInt8('0')) < UInt8(10);
    /// on Intel CPUs when compiled by gcc 8.
    return (c >= '0' && c <= '9');
}

inline bool isHexDigit(char c)
{
    return isNumericASCII(c)
        || (c >= 'a' && c <= 'f')
        || (c >= 'A' && c <= 'F');
}

inline bool isAlphaNumericASCII(char c)
{
    return isAlphaASCII(c)
        || isNumericASCII(c);
}

inline bool isWordCharASCII(char c)
{
    return isAlphaNumericASCII(c)
        || c == '_';
}

inline bool isValidIdentifierBegin(char c)
{
    return isAlphaASCII(c)
        || c == '_';
}

inline bool isWhitespaceASCII(char c)
{
    return c == ' ' || c == '\t' || c == '\n' || c == '\r' || c == '\f' || c == '\v';
}

/// Since |isWhiteSpaceASCII()| is used inside algorithms it's easier to implement another function than add extra argument.
inline bool isWhitespaceASCIIOneLine(char c)
{
    return c == ' ' || c == '\t' || c == '\f' || c == '\v';
}


inline bool isControlASCII(char c)
{
    return static_cast<unsigned char>(c) <= 31;
}
inline bool isPrintableASCII(char c)
{
    uint8_t uc = c;
    return uc >= 32 && uc <= 126;   /// 127 is ASCII DEL.
}

inline bool isPunctuationASCII(char c)
{
    uint8_t uc = c;
    return (uc >= 33 && uc <= 47)
        || (uc >= 58 && uc <= 64)
        || (uc >= 91 && uc <= 96)
        || (uc >= 123 && uc <= 125);
}

inline bool isValidIdentifier(const std::string_view & str)
{
    return !str.empty()
        && isValidIdentifierBegin(str[0])
        && std::all_of(str.begin() + 1, str.end(), isWordCharASCII);
        /// NULL is not a valid identifier in SQL, any case.
        // && !(str.size() == strlen("null") && 0 == strncasecmp(str.data(), "null", strlen("null")));
}

inline char toLowerIfAlphaASCII(char c) {
    return c | 0x20;
}

inline char toUpperIfAlphaASCII(char c) {
    return c & (~0x20);
}

inline char alternateCaseIfAlphaASCII(char c) {
    return c ^ 0x20;
}

inline bool equalsCaseInsensitive(char a, char b) {
    return a == b || (isAlphaASCII(a) && alternateCaseIfAlphaASCII(a) == b);
}