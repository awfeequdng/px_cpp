#include <iostream>
#include <stdexcept>
#include <string>

using namespace std;

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


int main() {
    std::cout << "1.23 = " << Str2Double::str2d("1.23") << std::endl;
    std::cout << "123 = " << Str2Double::str2d("123") << std::endl;
    std::cout << "0.001 = " << Str2Double::str2d("0.001") << std::endl;
    std::cout << "0.0010 = " << Str2Double::str2d("0.0010") << std::endl;
    return 0;
}

