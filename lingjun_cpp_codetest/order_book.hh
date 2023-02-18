#pragma once
#include <cstdint>
#include <ostream>
#include <vector>

namespace BBO {

const int MD_LEVELS = 5; // 5档行情
struct Tick {
    uint64_t bid_px[MD_LEVELS]; // bid价格放大10000倍
    uint64_t bid_sz[MD_LEVELS];
    uint32_t ask_px[MD_LEVELS]; // ask价格放大10000倍
    uint32_t ask_sz[MD_LEVELS];
    friend std::ostream& operator << (std::ostream& os, const Tick& tick) {
        for (int i = 0; i < MD_LEVELS; i++) {
            os << "bp" << i << ": " << tick.bid_px[i] / 10000.0
            << ", bs" << i << ": " << tick.bid_sz[i];
            os << ", ap" << i << ": " << tick.ask_px[i] / 10000.0
            << ", as" << i << ": " << tick.ask_sz[i] << std::endl;
        }
        return os;
    }
};

struct Order{
	uint32_t quantity;
	uint32_t queue_position;
	uint64_t last_modification_time;
};

class OrderBook {
public:
    // update order book using tick
    void onBookChange(const Tick& tick);
    // to query large orders (> x quantities) within 10 levels from order book.
    std::vector<Order> query_large_orders(int quantity);

private:

};

} // namespace BBO
