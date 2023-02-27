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
        // just for test
        if (tick_cnt > 1) {
            auto orders = order_book.query_large_orders(268);
            for (auto &ord : orders) {
                std::cout << "order, level: " << ord.queue_position
                          << ", qty: " << ord.quantity
                          << ", ts: " << ord.last_modification_time
                          << ", price: " << ord.price / 10000.0 << std::endl;
            }
            exit(0);
        }
    }
    std::cout << "order book: " << std::endl;
    std::cout << order_book << std::endl;
}

void test_multimap() {
    std::multimap<uint64_t, Order*> px2order_map;
    px2order_map.insert({10, new Order(10, 0, 1, 0)});
    px2order_map.insert({5, new Order(10, 0, 5, 0)});
    px2order_map.insert({5, new Order(55, 55, 555, 0)});
    px2order_map.insert({10, new Order(10, 1, 12, 0)});
    px2order_map.insert({1, new Order(1, 2, 3, 0)});
    for (auto [key, val] : px2order_map) {
        std::cout << "key: " << key << ", " << val << std::endl;
    }
    auto it = px2order_map.lower_bound(5);
    while (it != px2order_map.end()) {
        std::cout << "key: " << it->first << ", value: (" << it->second->quantity << ", " << it->second->queue_position << ", " << it->second->last_modification_time << ")" << std::endl;
        it++;
    }
}

int main() {
    // test_multimap();
    // test();
    test_order_book();
    return 0;
}
