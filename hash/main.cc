#include "SipHash.hh"
#include <cstdint>
#include <iostream>
#include "hex/hex.hh"


// int main() {
//     unsigned char buf[4] = {0xff, 0xff, 0xff, 0xff};
//     int i = 4;
//     uint16_t a = 0xff00, b = 0xff3;
//     unalignedStore(buf,a + b);
//     std::string str;
//     str.resize(8);
//     for (int i = 0; i < 4; i++) {
//         writeHexByteLowercase(buf[i], str.data() + 2 * i);
//     }
//     std::cout << str << std::endl;
//     return 0;
// }

int main() {
    unsigned char buf[4] = {0xff, 0xff, 0xff, 0xff};
    int i = 4;
    uint16_t a = 0xff00, b = 0xff3;
    unalignedStore<uint16_t>(buf,a + b);
    std::string str;
    str.resize(8);
    for (int i = 0; i < 4; i++) {
        writeHexByteLowercase(buf[i], str.data() + 2 * i);
    }
    std::cout << str << std::endl;
    return 0;
}
