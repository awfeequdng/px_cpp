
// #include "gtest/gtest.h"

// #include "order_book.hh"

// class TestQueryLargeOrders : public testing::Test {
// };

// TEST_F(TestQueryLargeOrders, test_Date) {
//     auto md_parser = std::make_shared<MarketDataCsvParser>();
//     md_parser->start_parse("rb2305.csv");
//     OrderBook order_book;

//     int tick_cnt = 0;

//     while (!md_parser->eof()) {
//         auto tick = md_parser->dequeue();
//         if (tick) {
//             tick_cnt++;
//             order_book.onBookChange(*tick);
//         }
//         // just for test
//         if (tick_cnt > 1) {
//             auto orders = order_book.query_large_orders(268);
//             for (auto &ord : orders) {
//                 std::cout << "order, level: " << ord.queue_position
//                           << ", qty: " << ord.quantity
//                           << ", ts: " << ord.last_modification_time
//                           << ", price: " << ord.price / 10000.0 << std::endl;
//             }
//             exit(0);
//         }
//     }
//     std::cout << "order book: " << std::endl;
//     std::cout << order_book << std::endl;
// }

// int main(int argc, char **argv) {
//     testing::InitGoogleTest(&argc, argv);
//     return RUN_ALL_TESTS();
// }

