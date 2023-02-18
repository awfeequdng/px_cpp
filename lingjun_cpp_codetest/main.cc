#include <iostream>
#include <memory>
#include <unordered_map>
#include "md_csv_parser.hh"

using namespace BBO;

void test() {
    auto md_parser = std::make_shared<MarketDataCsvParser>();
    md_parser->start_parse("rb2305.csv");
    while (!md_parser->eof()) {
        auto tick = md_parser->dequeue();
        if (tick) {
            std::cout << tick << std::endl;
        }
    }

}

int main() {
    test();
    return 0;
}
