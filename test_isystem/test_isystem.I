# 1 "main.cc"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 417 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "main.cc" 2

# 1 "test2/test2.hh" 1


extern int test_isystem();
# 3 "main.cc" 2

# 1 "test3/test3.hh" 1


extern "C" int test_isystem();
# 5 "main.cc" 2

int main() {
    test_isystem();
    return 0;
}
# 1 "test.cc"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 417 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "test.cc" 2

void test_isystem() {
    return;
}
