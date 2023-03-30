#pragma once
#include <cstdint>
#include <ostream>
#include <vector>
#include <map>
#include <unordered_map>

namespace BBO {

const int MD_LEVELS = 5; // 5档行情
struct Tick {
    uint64_t bid_px[MD_LEVELS]; // bid价格放大10000倍
    uint64_t bid_sz[MD_LEVELS];
    uint32_t ask_px[MD_LEVELS]; // ask价格放大10000倍
    uint32_t ask_sz[MD_LEVELS];
    uint64_t ts; // 时间戳，以ns为单位
    friend std::ostream& operator << (std::ostream& os, const Tick& tick) {
        for (int i = 0; i < MD_LEVELS; i++) {
            os << "bp" << i << ": " << tick.bid_px[i] / 10000.0
            << ", bs" << i << ": " << tick.bid_sz[i];
            os << ", ap" << i << ": " << tick.ask_px[i] / 10000.0
            << ", as" << i << ": " << tick.ask_sz[i] << std::endl;
        }
        os << "time: " << tick.ts << std::endl;
        return os;
    }
};

struct Order{
    Order() {}
    Order(uint32_t qty, int32_t pos, uint64_t ts, uint64_t px)
        : quantity(qty),
          queue_position(pos),
          last_modification_time(ts),
          price(px) {
    }

	uint32_t quantity{0};
    // 正数为ask，负数为bid
	int32_t queue_position{0};
	uint64_t last_modification_time{0};
    // 放大10000倍
    uint64_t price{0};
    Order *next{nullptr};
};

struct HandicapNode {
    HandicapNode() {}
    HandicapNode(uint64_t p, uint64_t q, uint64_t ts) : price(p), qty(q) {
        this->num_orders = 1;
        this->head = new Order(q, 0, ts, p);
        this->tail = this->head;
    }
    // todo: 当心1.1 被标识为1.099999这种问题
    uint64_t price{0}; // 放大10000倍
    uint64_t qty{0};
    HandicapNode *next{nullptr};

    uint32_t num_orders{0}; // order链表order的数量
    Order* head{nullptr}; // order链表头
    Order* tail{nullptr}; // order链表尾
};

class OrderBook {
public:
    // update order book using tick
    void onBookChange(const Tick& tick);
    // to query large orders (> x quantities) within 10 levels from order book.
    std::vector<Order> query_large_orders(int quantity, int max_level = 10);

    void createAskOrders(const Tick& tick);
    void createBidOrders(const Tick& tick);
    void createOrders(const Tick& tick);

    void removeOrders(const Tick& tick);
    void removeAskOrders(const Tick& tick);
    void removeBidOrders(const Tick& tick);

    void releaseHandicapNode(HandicapNode* node);
    Order* removeOrdersInChain(Order* order_head, uint32_t rm_sz, uint64_t ts, int& rm_ord_cnt);
    Order* addOrdersInChain(Order* order_head, uint32_t add_sz, uint64_t ts, uint64_t px);

    std::unordered_map<uint64_t, int> get_price_level();

    friend std::ostream& operator << (std::ostream& os, const OrderBook& ob);
    void print(std::ostream& os) const;
private:
    void print_ask(std::ostream &os) const;
    void print_bid(std::ostream &os) const;

private:
    HandicapNode *ask_head{nullptr};
    HandicapNode *bid_head{nullptr};

    std::multimap<uint64_t, Order*> qty2order_map_;
};

// std::ostream& operator << (std::ostream& os, const BBO::OrderBook& ob);
} // namespace BBO

