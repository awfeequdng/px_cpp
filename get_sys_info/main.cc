#include <iostream>
#include <unordered_map>

#include "getMappedArea.hh"
#include "MemoryStatisticsOS.hh"

int main() {

    std::cout << "hello world" << std::endl;
    auto flags = std::cout.flags();

    int i = 20;
    auto area = getMappedArea(&i);

    std::cout << "mapped addressed of i : " << std::hex << area.first << ", size:" << area.second << std::endl;

    std::cout << getMappedArea() << std::endl;
    std::cout.flags(flags);

    std::cout << "-------------- memory statistics of os -------------------" << std::endl;

    MemoryStatisticsOS mem_statis;
    auto data = mem_statis.get();
    std::cout << "virt: " << data.virt / 1024 << "KB" << std::endl;
    std::cout << "resident: " << data.resident / 1024 << "KB" << std::endl;
    std::cout << "shared: " << data.shared / 1024 << "KB" << std::endl;
    std::cout << "code: " << data.code / 1024 << "KB" << std::endl;
    std::cout << "data_and_stack: " << data.data_and_stack / 1024 << "KB" << std::endl;
    return 0;
}
