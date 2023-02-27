#include <iostream>
#include <memory>
#include <stdexcept>
#include <unordered_map>
#include "md_csv_parser.hh"

using namespace BBO;

void test_md_parser(const std::string& fname) {
    std::cout << __FUNCTION__ << "---------------" << std::endl;
    std::shared_ptr<MarketDataParser> md_parser = std::make_shared<MarketDataCsvParser>();
    md_parser->start_parse(fname);
    int tick_cnt = 0;
    while (!md_parser->eof()) {
        auto tick = md_parser->dequeue();
        if (tick) {
            tick_cnt++;
            // std::cout << *tick << std::endl;
        }
    }
    std::cout << "parsed tick_cnt: " << tick_cnt << std::endl;
}

void test_order_book(const std::string& fname) {
    std::cout << __FUNCTION__ << "---------------" << std::endl;
    auto md_parser = std::make_shared<MarketDataCsvParser>();
    md_parser->start_parse(fname);
    OrderBook order_book;

    int tick_cnt = 0;

    while (!md_parser->eof()) {
        auto tick = md_parser->dequeue();
        if (tick) {
            tick_cnt++;
            order_book.onBookChange(*tick);
        }
        // just for test
        if (tick_cnt == 2) {
            auto orders = order_book.query_large_orders(268);
            for (auto &ord : orders) {
                std::cout << "order, level: " << ord.queue_position
                          << ", qty: " << ord.quantity
                          << ", ts: " << ord.last_modification_time
                          << ", price: " << ord.price / 10000.0 << std::endl;
            }
        }
    }
    // std::cout << "order book: " << std::endl;
    // std::cout << order_book << std::endl;
}

int main(int argc, char** argv) {
    if (argc < 2) {
        throw std::logic_error("please input the market data file name");
    }
    std::string fname(argv[1]);
    test_md_parser(fname);
    test_order_book(fname);
    return 0;
}
