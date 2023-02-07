#include <iostream>
#include <unordered_map>

using namespace std;
class A {
public:
    static A* instance() {
        static A singleton;
        return &singleton;
    }
    int find_longest_sub_str(const std::string &str) {
        int len = str.size();
        if (len <= 1) return len;

        unordered_map<char, int> pos;
        int longest = 1;
        int first = 0;
        int last = 0;
        pos[str[0]] = 0;
        for (int i = 1; i < len; i++) {
            auto &ch = str[i];
            if (pos.find(ch) != pos.end() && pos[ch] >= first) {
                first = pos[ch] + 1;
                pos[ch] = i;
            } else {
                last = i;
                pos[ch] = i;
            }
            if (last - first + 1 > longest) {
                longest = last - first + 1;
            }
        }

        return longest;
    }
private:
    A() {}
};

int main() {

    cout << A::instance()->find_longest_sub_str("abacd") << std::endl;
    cout << A::instance()->find_longest_sub_str("abacde") << std::endl;
    return 0;
}
