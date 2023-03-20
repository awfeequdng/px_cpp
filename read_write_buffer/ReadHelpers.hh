#pragma once
#include <limits>
#include <stdexcept>
#include <string>

#include "ReadBuffer.hh"
#include "VarInt.hh"
#include "base/unit.hh"
#include "base/types.hh"
#include "base/decimal.hh"

#include "StringUtils/StringUtils.hh"

static constexpr auto DEFAULT_MAX_STRING_SIZE = 1_GiB;;

/// Helper functions for formatted input.

inline char parseEscapeSequence(char c)
{
    switch (c)
    {
        case 'a':
            return '\a';
        case 'b':
            return '\b';
        case 'e':
            return '\x1B';      /// \e escape sequence is non standard for C and C++ but supported by gcc and clang.
        case 'f':
            return '\f';
        case 'n':
            return '\n';
        case 'r':
            return '\r';
        case 't':
            return '\t';
        case 'v':
            return '\v';
        case '0':
            return '\0';
        default:
            return c;
    }
}

/// These functions are located in VarInt.h
/// inline void throwReadAfterEOF()

inline void readChar(char & x, ReadBuffer & buf)
{
    if (!buf.eof())
    {
        x = *buf.position();
        ++buf.position();
    }
    else
        throwReadAfterEOF();
}

/// Read POD-type in native format
template <typename T>
inline void readPODBinary(T& x, ReadBuffer & buf)
{
    buf.readStrict(reinterpret_cast<char *>(&x), sizeof(x));
}

template <typename T>
inline void readIntBinary(T& x, ReadBuffer & buf)
{
    readPODBinary(x, buf);
}

template <typename T>
inline void readFloatBinary(T& x, ReadBuffer & buf)
{
    readPODBinary(x, buf);
}

// inline void readStringBinary(std::string& s, ReadBuffer& buf, size_t MAX_STRING_SIZE = DEFAULT_MAX_STRING_SIZE) {

// }
void assertString(const char*, ReadBuffer& buf);
void assertEOF(ReadBuffer& buf);

[[noreturn]] void throwAtAssertionFailed(const char * s, ReadBuffer & buf);

inline bool checkChar(char c, ReadBuffer& buf) {
    char a;
    if (!buf.peek(a) || a != c) {
        return false;
    }
    buf.ignore();
    return true;
}

inline void assertChar(char symbol, ReadBuffer& buf) {
    if (!checkChar(symbol, buf)) {
        // throw std::runtime_error("assertChar failed, expect " + std::to_string(symbol));
        char err[2] = {symbol, '\0'};
        throwAtAssertionFailed(err, buf);
    }
}

inline bool checkCharCaseInsensitive(char c, ReadBuffer& buf) {
    char a;
    if (!buf.peek(a) || !equalsCaseInsensitive(a, c)) {
        return false;
    }
    buf.ignore();
    return true;
}

bool checkString(const char* s, ReadBuffer& buf);
inline bool checkString(const String& s, ReadBuffer &buf) {
    return checkString(s.c_str(), buf);
}

bool checkStringCaseInsensitive(const char* s, ReadBuffer& buf);
inline bool checkStringCaseInsensitive(const String& s, ReadBuffer& buf) {
    return checkStringCaseInsensitive(s.c_str(), buf);
}

void assertStringCaseInsensitive(const char* s, ReadBuffer& buf);
inline void assertStringCaseInsensitive(const String& s, ReadBuffer& buf) {
    assertStringCaseInsensitive(s.c_str(), buf);
}

inline void readBoolText(bool &x, ReadBuffer& buf) {
    char tmp = '0';
    readChar(tmp, buf);
    x = (tmp != '0');
}

inline void readBoolTextWord(bool &x, ReadBuffer& buf, bool support_upper_case = false) {
    if (buf.eof())
        throwReadAfterEOF();

    switch (*buf.position()) {
        case 't':
            assertString("true", buf);
            x = true;
            break;
        case 'f':
            assertString("false", buf);
            x = false;
            break;
        case 'T': {
            if (support_upper_case) {
                assertString("TRUE", buf);
                x = true;
                break;
            } else {
                [[fallthrough]];
            }
        }
        case 'F': {
            if (support_upper_case) {
                assertString("FALSE", buf);
                x = false;
                break;
            } else {
                [[fallthrough]];
            }
        }
        default:
            throw std::runtime_error("Unexpected Bool value");
    }
}

enum class ReadIntTextCheckOverflow {
    DO_NOT_CHECK_OVERFLOW,
    CHECK_OVERFLOW,
};

template <typename T, typename ReturnType = void, ReadIntTextCheckOverflow check_overflow = ReadIntTextCheckOverflow::DO_NOT_CHECK_OVERFLOW>
ReturnType readIntTextImpl(T& x, ReadBuffer& buf) {
    using UnsignedT = std::make_unsigned_t<T>;

    static constexpr bool throw_exception = std::is_same_v<ReturnType, void>;

    bool negative = false;
    UnsignedT res{};
    if (buf.eof()) {
        if constexpr (throw_exception) {
            throwReadAfterEOF();
        } else {
            return ReturnType(false);
        }
    }

    const size_t initial_pos = buf.count();
    bool has_sign = false;
    bool has_number = false;
    while (!buf.eof()) {
        switch (*buf.position()) {
            case '+': {
                // 123+ or +123+, just stop after 123 or +123.
                if (has_number) {
                    goto end;
                }

                // No digits read yet, but we already read sign, like ++, -+.
                if (has_sign) {
                    if constexpr (throw_exception) {
                        throw std::runtime_error("Cannot parse number with multiple sign(+/-) characters");
                    } else {
                        return ReturnType(false);
                    }
                }

                has_sign = true;
                break;
            }
            case '-': {
                if (has_number) {
                    goto end;
                }

                // No digits read yet, but we already read sign, like ++, -+.
                if (has_sign) {
                    if constexpr (throw_exception) {
                        throw std::runtime_error("Cannot parse number with multiple sign(+/-) characters");
                    } else {
                        return ReturnType(false);
                    }
                }

                if constexpr (std::is_signed_v<T>) {
                    negative = true;
                } else {
                    if constexpr (throw_exception) {
                        throw std::runtime_error("Unsigned type must not contain '-' symbol");
                    } else {
                        return ReturnType(false);
                    }
                }
                has_sign = true;
                break;
            }
            case '0': [[fallthrough]];
            case '1': [[fallthrough]];
            case '2': [[fallthrough]];
            case '3': [[fallthrough]];
            case '4': [[fallthrough]];
            case '5': [[fallthrough]];
            case '6': [[fallthrough]];
            case '7': [[fallthrough]];
            case '8': [[fallthrough]];
            case '9': {
                has_number = true;
                // if constexpr (check_overflow == ReadIntTextCheckOverflow::CHECK_OVERFLOW && !is_big_int_v<T>)
                if constexpr (check_overflow == ReadIntTextCheckOverflow::CHECK_OVERFLOW) {
                    // Perform relativelly slow overflow check only when
                    // number of decimal digits so far is close to the max for given type.
                    // Example: 20 * 10 will overflow Int8
                    if (buf.count() - initial_pos + 1 >= std::numeric_limits<T>::max_digits10) {
                        throw std::runtime_error("not impl overflow check yet, func: " + __FUNCTION__ + ", line: " + std::to_string(__LINE__));
                    }
                }
                res *= 10;
                res += *buf.position() - '0';
                break;
            }
            default:
                goto end;
        }
        ++buf.position();
    }

end:
    if (has_sign && !has_number) {
        if constexpr (throw_exception) {
            throw std::runtime_error(" Cannot parse number with a sign character but without any numeric character");
        } else {
            return ReturnType(false);
        }
    }
    x = res;
    if constexpr (std::is_signed_v<T>) {
        if (negative) {
            if constexpr (check_overflow == ReadIntTextCheckOverflow::CHECK_OVERFLOW) {
                if (res > std::numeric_limits<T>::max() + 1) {
                    if constexpr (throw_exception) {
                        throw std::runtime_error(" Cannot parse int number overflowed.");
                    } else {
                        return ReturnType(false);
                    }
                }
            } else {
                x = -res;
            }
        }
    }

    return ReturnType(true);
}

template <ReadIntTextCheckOverflow check_overflow = ReadIntTextCheckOverflow::DO_NOT_CHECK_OVERFLOW, typename T>
void readIntText(T& x, ReadBuffer& buf) {
    if constexpr (is_decimal_v<T>) {
    }
    readIntTextImpl<T, void, check_overflow>(x, buf);
}

template <ReadIntTextCheckOverflow check_overflow = ReadIntTextCheckOverflow::CHECK_OVERFLOW, typename T>
bool tryReadIntText(T& x, ReadBuffer& buf) {
    return readIntTextImpl<T, bool, check_overflow> (x, buf);
}

// Skip whitespace characters.
inline void skipWhitespaceIfAny(ReadBuffer& buf, bool one_line = false) {
    if (!one_line) {
        while (!buf.eof() && isWhitespaceASCII(*buf.position()))
            ++buf.position();
    } else {
        while (!buf.eof() && isWhitespaceASCIIOneLine(*buf.position()))
            ++buf.position();
    }
}

/// Skip to next character after next \n. If no \n in stream, skip to end.
void skipToNextLineOrEOF(ReadBuffer & buf);

void readStringUntilEOF(std::string & s, ReadBuffer & buf);