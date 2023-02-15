#include <iostream>
#include <stdexcept>
#include <string>
#include <cmath>

using namespace std;

int is_sign(char ch) {
    if (ch == '+') return 1;
    else if (ch == '-') return -1;
    return 0;
}

int to_digit(char ch) {
    return ch - '0';
}

bool is_digit(char ch) {
    if (ch >= '0' && ch <= '9') return true;
    return false;
}

double str2double(const string& str) {
    enum State {
        START,
        SIGN1,
        DIGIT1,
        DOT,
        DIGIT2,
        EXP,
        SIGN2,
        DIGIT3
    };
    int digit1_bits = 0;
    int digit1 = 0, digit2 = 0, digit3 = 0;
    int sign1 = 1, sign2 = 1;
    double dfac = 1;

    State state = START;
    for (auto &ch : str) {
        switch (state) {
            case START:
                if (auto s = is_sign(ch)) {
                    sign1 = s;
                    state = SIGN1;
                } else if (is_digit(ch)) {
                    state = DIGIT1;
                    digit1 = to_digit(ch);
                    digit1_bits++;
                } else if (ch == '.') {
                    state = DOT;
                } else {
                    throw logic_error(string("invalid char: ") + ch);
                }
                break;
            case SIGN1:
                if (ch == '.') {
                    state = DOT;
                } else if (is_digit(ch)) {
                    state = DIGIT1;
                    digit1 = to_digit(ch);
                    digit1_bits++;
                } else {
                    throw logic_error(string("invalid char: ") + ch);
                }
                break;
            case DIGIT1:
                if (is_digit(ch)) {
                    digit1 = digit1 * 10 + to_digit(ch);
                    digit1_bits++;
                } else if (ch == '.') {
                    state = DOT;
                } else if (ch == 'e' || ch == 'E') {
                    state = EXP;
                } else {
                    throw logic_error(string("invalid char: ") + ch);
                }
                break;
            case DOT:
                if (is_digit(ch)) {
                    state = DIGIT2;
                    digit2 = to_digit(ch);
                    dfac *= 0.1;
                } else if (ch == 'e' || ch == 'E') {
                    state = EXP;
                } else {
                    throw logic_error(string("invalid char: ") + ch);
                }
                break;
            case DIGIT2:
                if (is_digit(ch)) {
                    digit2 = digit2 * 10 + to_digit(ch);
                    dfac *= 0.1;
                } else if (ch == 'e' || ch == 'E') {
                    state = EXP;
                }
                else {
                    throw logic_error(string("invalid char: ") + ch);
                }
                break;
            case EXP:
                if (auto sgn = is_sign(ch)) {
                    sign2 = sgn;
                    state = SIGN2;
                } else if (is_digit(ch)) {
                    digit3 = to_digit(ch);
                    state = DIGIT3;
                } else {
                    throw logic_error(string("invalid char: ") + ch);
                }
                break;
            case SIGN2:
                if (is_digit(ch)) {
                    digit3 = to_digit(ch);
                    state = DIGIT3;
                } else {
                    throw logic_error(string("invalid char: ") + ch);
                }
                break;
            case DIGIT3:
                if (is_digit(ch)) {
                    digit3 = digit3 * 10 + to_digit(ch);
                } else {
                    throw logic_error(string("invalid char: ") + ch);
                }
                break;
            default:
                throw logic_error("invalid state: " + to_string(state));
        }
    }
    if (state == START) return 0.0;
    if (state == SIGN1) throw logic_error("invalid str: " + str);
    if (state == DOT && digit1_bits == 0) throw logic_error("invalid str: " + str);
    if (state == EXP) throw logic_error("invalid str: " + str);
    if (state == SIGN2) throw logic_error("invalid str: " + str);

    return sign1 * (digit1 + digit2 * dfac) * pow(10, (sign2 * digit3));
}

class Str2Double {
public:
    enum State {
        START,
        DIGIT1,
        DOT,
        DIGIT2
    };
    static int todigit(char ch) {
        ch -= '0';
        return int(ch);
    }
    static double str2d(const string &str) {
        int i = 0, d = 0;
        double d_factor = 1;
        State state = START;
        for (auto ch : str) {
            switch(state) {
                case START:
                    state = DIGIT1;
                    i = todigit(ch);
                    break;
                case DIGIT1:
                    if (ch == '.') {
                        state = DOT;
                    } else {
                        i = i * 10 + todigit(ch);
                    }
                    break;
                case DOT:
                    state = DIGIT2;
                    d = todigit(ch);
                    d_factor *= 0.1;
                    break;
                case DIGIT2:
                    d = d * 10 + todigit(ch);
                    d_factor *= 0.1;
                    break;
                default:
                    throw logic_error("invalid state: " + to_string(state));
            }
        }
        double ret = i + d * d_factor;
        return ret;
    }

};

void test_str2double() {
    std::cout << "1.23 = " << str2double("1.23") << std::endl;
    std::cout << "123 = " << str2double("123") << std::endl;
    std::cout << "0.001 = " << str2double("0.001") << std::endl;
    std::cout << "0.0010 = " << str2double("0.0010") << std::endl;
    std::cout << "0.0010e3 = " << str2double("0.0010e3") << std::endl;
    std::cout << "0.0010e1 = " << str2double("0.0010e1") << std::endl;
    std::cout << "0.0010e2 = " << str2double("0.0010e2") << std::endl;
    std::cout << "0.0010e4 = " << str2double("0.0010e4") << std::endl;
    std::cout << "+1. = " << str2double("+1.") << std::endl;
    std::cout << "+1.2 = " << str2double("+1.2") << std::endl;
    std::cout << "-1.2 = " << str2double("-1.2") << std::endl;
    std::cout << "-1.2e1 = " << str2double("-1.2e1") << std::endl;
    std::cout << "-1.2e-1 = " << str2double("-1.2e-1") << std::endl;

}

int main() {
    // std::cout << "1.23 = " << Str2Double::str2d("1.23") << std::endl;
    // std::cout << "123 = " << Str2Double::str2d("123") << std::endl;
    // std::cout << "0.001 = " << Str2Double::str2d("0.001") << std::endl;
    // std::cout << "0.0010 = " << Str2Double::str2d("0.0010") << std::endl;

    test_str2double();
    return 0;
}

