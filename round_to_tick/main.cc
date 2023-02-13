#include <iostream>


using namespace std;

double round_to_tick(double price, double tick, bool ceil) {
    // price = 1.3
    // tick = 0.5
    // ceil true: -> 1.5
    //      false: -> 1.0
    long long l_px = price * 1000000;
    long long l_tick = tick * 1000000;

    if (l_px % l_tick == 0) {
        return l_px / 1000000.0;
    }

    auto r = (l_px + l_tick) % l_tick;
    if (ceil) {
        l_px = (l_px + l_tick) - r;
    } else {
        l_px = (l_px + l_tick) - r - l_tick;
    }
    return l_px / 1000000.0;

}

int main() {
    std::cout << round_to_tick(1.3, 0.5, true) << std::endl;
    std::cout << round_to_tick(1.3, 0.5, false) << std::endl;
    std::cout << round_to_tick(1, 0.5, false) << std::endl;
    std::cout << round_to_tick(1.9, 0.5, false) << std::endl;
    return 0;
}

