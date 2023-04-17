#include <iostream>
#include <unordered_map>
#include <iostream>
#include <thread>

void foo(int n) {
    static int cnt = 0;
    cnt++;
    std::cout << "cnt = " << cnt << std::endl;
    char buffer[1024];
    if (n > 0) {
        // buffer[n % 1024] = n % 10 + 'a';
        foo(n - 1);
    }
}

void process1() {
    foo(10000000);
}

int main() {
    std::thread th(process1);
    th.join();

    return 0;
}
