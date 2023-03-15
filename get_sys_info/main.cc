#include <iostream>
#include <unordered_map>

#include "getMappedArea.hh"

int main() {

    std::cout << "hello world" << std::endl;
    int i = 20;
    auto area = getMappedArea(&i);

    std::cout << "mapped addressed of i : " << std::hex << area.first << ", size:" << area.second << std::endl;

    std::cout << getMappedArea() << std::endl;
    return 0;
}
