#include <iostream>
#include <memory>
#include <unordered_map>
#include "md_csv_parser.hh"

using namespace BBO;

void test() {
    std::shared_ptr<MarketDataParser> md_parser = std::make_shared<MarketDataCsvParser>();
    md_parser->start_parse("rb2305.csv");
    int tick_cnt = 0;
    while (!md_parser->eof()) {
        auto tick = md_parser->dequeue();
        if (tick) {
            tick_cnt++;
            std::cout << *tick << std::endl;
        }
    }
    std::cout << "parsed tick_cnt: " << tick_cnt << std::endl;
}

void test_order_book() {
    auto md_parser = std::make_shared<MarketDataCsvParser>();
    md_parser->start_parse("rb2305.csv");
    OrderBook order_book;

    int tick_cnt = 0;

    while (!md_parser->eof()) {
        auto tick = md_parser->dequeue();
        if (tick) {
            tick_cnt++;
            order_book.onBookChange(*tick);
        }
    }
}

int main() {
    test();
    test_order_book();
    return 0;
}
