#include "order_book.hh"
#include <cstddef>
#include <cstdint>
#include <iostream>

namespace BBO {

OrderBook::~OrderBook() {
    auto node = bid_head;
    while (node) {
        bid_head = node->next;
        releaseHandicapNode(node);
        node = bid_head;
    }
    node = ask_head;
    while (node) {
        ask_head = node->next;
        releaseHandicapNode(node);
        node = ask_head;
    }
}

void OrderBook::onBookChange(const Tick& tick) {
    removeOrders(tick);
    createOrders(tick);
}

std::unordered_map<uint64_t, int> OrderBook::get_price_level() {
    std::unordered_map<uint64_t, int> px_level_map;

    // ask
    auto node = ask_head;
    int level = 1;
    while (node) {
        px_level_map[node->price] = level++;
        node = node->next;
    }

    // bid
    node = bid_head;
    level = -1;
    while (node) {
        px_level_map[node->price] = level--;
        node = node->next;
    }

    return std::move(px_level_map);
}

void show_price_level(const std::unordered_map<uint64_t, int>& px_level_map) {
    std::cout << "show price level: " << std::endl;
    auto it = px_level_map.cbegin();
    while (it != px_level_map.cend()) {
        std::cout << "px: " << it->first / 10000.0 << ", " << "level: " << it->second << std::endl;
        it++;
    }
}

void show_qty_order_map(const std::multimap<uint64_t, Order*>& qty2order) {
    for (auto &[key, val] : qty2order) {
        std::cout << "qty: " << key << ", " << val << "("
                  << val->quantity << "," << val->queue_position << "," << val->last_modification_time << ")"
                  << std::endl;
    }
}

std::vector<Order> OrderBook::query_large_orders(int quantity, int max_level) {
    std::vector<Order> ret;
    ret.reserve(10);

    std::unordered_map<uint64_t, int> px_level_map = get_price_level();
    // show_price_level(px_level_map);
    // show_qty_order_map(qty2order_map_);

    auto it = qty2order_map_.upper_bound(quantity);
    while (it != qty2order_map_.end()) {
        auto level_it = px_level_map.find(it->second->price);

        if (level_it != px_level_map.end() && abs(level_it->second) <= max_level) {
            it->second->queue_position = level_it->second;
            ret.push_back(*(it->second));
        }

        it++;
    }
    return ret;
}

// return new header
Order* OrderBook::removeOrdersInChain(Order* order_head, uint32_t rm_sz, uint64_t ts, int& rm_ord_cnt) {
    auto node = order_head;
    while (node) {
        if (node->quantity < rm_sz) {
            rm_sz -= node->quantity;
            auto tmp = node;
            node = node->next;
            // 删除 qty -> order 的索引关系
            auto it = qty2order_map_.lower_bound(tmp->quantity);
            if (it != qty2order_map_.end() && it->second == tmp) {
                qty2order_map_.erase(it);
            }
            rm_ord_cnt++;
            delete tmp;
        } else if (node->quantity == rm_sz) {
            auto tmp = node;
            node = node->next;
            // 删除 qty -> order 的索引关系
            auto it = qty2order_map_.lower_bound(tmp->quantity);
            if (it != qty2order_map_.end() && it->second == tmp) {
                qty2order_map_.erase(it);
            }
            rm_ord_cnt++;
            delete tmp;

            return node;
        } else {
            // 删除 qty -> order 的索引关系
            auto it = qty2order_map_.lower_bound(node->quantity);
            if (it != qty2order_map_.end() && it->second == node) {
                qty2order_map_.erase(it);
            }
            node->quantity -= rm_sz;
            node->last_modification_time = ts;
            // 更新qty -> order的索引关系
            qty2order_map_.insert({node->quantity, node});
            return node;
        }
    }

    return node;
}

// return 这new tail
Order* OrderBook::addOrdersInChain(Order* order_tail, uint32_t add_sz, uint64_t ts, uint64_t px) {
    // 此时order_tail一定不为nullptr
    auto tail_pos = order_tail->queue_position;
    // 在刚创建的order中，queue_position字段没有意义
    auto ord = new Order(add_sz, tail_pos, ts, px);
    order_tail->next = ord;

    // 建立qty -> order的索引，用于快速query_large_orders
    qty2order_map_.insert({ord->quantity, ord});

    return ord;
}

void OrderBook::createAskOrders(const Tick& tick) {
    HandicapNode dummy;
    dummy.next = ask_head;
    auto node = &dummy;
    for (size_t i = 0; i < MD_LEVELS; i++) {
        if (node->next == nullptr || (node->next->price > tick.ask_px[i])) {
            auto tmp = node->next;
            node->next = new HandicapNode(tick.ask_px[i], tick.ask_sz[i], tick.ts);
            // 建立qty -> order的索引，用于快速query_large_orders
            qty2order_map_.insert({node->next->head->quantity, node->next->head});
            node->next->next = tmp;
            node = node->next;
        } else if (node->next->price == tick.ask_px[i]) {
            if (node->next->qty == tick.ask_sz[i]) {
                // the order is not changed
            } else if (node->next->qty > tick.ask_sz[i]) {
                // 从orders队列中删除一些订单，或者将订单数量改小
                // 按照时间优先原则
                auto order_head = node->next->head;

                auto rm_sz = node->next->qty - tick.ask_sz[i];
                node->next->qty = tick.ask_sz[i];
                int rm_ord_cnt = 0;
                node->next->head = removeOrdersInChain(order_head, rm_sz, tick.ts, rm_ord_cnt);
                node->next->num_orders -= rm_ord_cnt;
                if (node->next->head == nullptr) {
                    node->next->tail = nullptr;
                } else if (node->next->head->next == nullptr) {
                    // order链表中head是最后一个节点
                    node->next->tail = node->next->head;
                }
            } else if (node->next->qty < tick.ask_sz[i]) {

                auto order_tail = node->next->tail;
                auto add_sz = tick.ask_sz[i] - node->next->qty;

                node->next->qty = tick.ask_sz[i];
                node->next->tail = addOrdersInChain(order_tail, add_sz, tick.ts, node->next->price);
                node->next->num_orders++;
            }
            node = node->next;
        }
    }

    ask_head = dummy.next;
}

void OrderBook::createBidOrders(const Tick& tick) {
    HandicapNode dummy;
    dummy.next = bid_head;
    auto node = &dummy;
    for (size_t i = 0; i < MD_LEVELS; i++) {
        if (node->next == nullptr || node->next->price < tick.bid_px[i]) {
            auto tmp = node->next;
            node->next = new HandicapNode(tick.bid_px[i], tick.bid_sz[i], tick.ts);
            // 建立qty -> order的索引，用于快速query_large_orders
            qty2order_map_.insert({node->next->head->quantity, node->next->head});
            node->next->next = tmp;
            node = node->next;
        } else if (node->next->price == tick.bid_px[i]) {
            if (node->next->qty == tick.bid_sz[i]) {
                // the order is not changed
            } else if (node->next->qty > tick.bid_sz[i]) {
                // 从orders队列中删除一些订单，或者将订单数量减小
                // 按照时间优先原则
                auto order_head = node->next->head;
                auto rm_sz = node->next->qty - tick.bid_sz[i];
                node->next->qty = tick.bid_sz[i];
                int rm_ord_cnt = 0;
                node->next->head = removeOrdersInChain(order_head, rm_sz, tick.ts, rm_ord_cnt);
                node->next->num_orders -= rm_ord_cnt;
                if (node->next->head == nullptr) {
                    node->next->tail = nullptr;
                } else if (node->next->head->next == nullptr) {
                    // order链表中head是最后一个节点
                    node->next->tail = node->next->head;
                }
            } else if (node->next->qty < tick.bid_sz[i]) {
                auto add_sz = tick.bid_sz[i] - node->next->qty;
                node->next->qty = tick.bid_sz[i];
                auto order_tail = node->next->tail;
                node->next->tail = addOrdersInChain(order_tail, add_sz, tick.ts, node->next->price);
                node->next->num_orders++;
            }
            node = node->next;
        }
    }

    bid_head = dummy.next;
}

void OrderBook::createOrders(const Tick& tick) {
    createAskOrders(tick);
    createBidOrders(tick);
}

void OrderBook::removeAskOrders(const Tick& tick) {
    auto node = ask_head;
    while (node && (node->price < tick.ask_px[0])) {
        ask_head = node->next;
        releaseHandicapNode(node);
        node = ask_head;
    }
}

void OrderBook::removeBidOrders(const Tick& tick) {
    auto node = bid_head;
    while (node && (node->price > tick.bid_px[0])) {
        bid_head = node->next;
        releaseHandicapNode(node);
        node = bid_head;
    }
}

void OrderBook::releaseHandicapNode(HandicapNode* node) {
    if (!node) {
        return;
    }
    auto ord = node->head;
    delete node;

    while (ord) {
        auto tmp = ord->next;
        // 删除 qty -> order 的索引关系
        auto it = qty2order_map_.lower_bound(ord->quantity);
        if (it != qty2order_map_.end() && it->second == ord) {
            qty2order_map_.erase(it);
        }
        delete ord;
        ord = tmp;
    }
}

void OrderBook::removeOrders(const Tick& tick) {
    if (ask_head) {
        removeAskOrders(tick);
    }
    if (bid_head) {
        removeBidOrders(tick);
    }
}

void OrderBook::print_ask(std::ostream &os) const {
    os << "ask: \n";
    auto node = ask_head;
    while (node) {
        os << "(" << node->price / 10000.0 << "," << node->qty << "," << node->num_orders << "): [";
        auto ord = node->head;
        while(ord) {
            os << "(" << ord->quantity << "," << ord->last_modification_time << ") ";
            ord = ord->next;
        }
        os << "]" << std::endl;

        node = node->next;
    }
}

void OrderBook::print_bid(std::ostream &os) const {
    os << "bid: \n";
    auto node = bid_head;
    while (node) {
        os << "(" << node->price / 10000.0 << "," << node->qty << "," << node->num_orders << "): [";
        auto ord = node->head;
        while(ord) {
            os << "(" << ord->quantity << "," << ord->last_modification_time << ") ";
            ord = ord->next;
        }
        os << "]" << std::endl;

        node = node->next;
    }
}

void OrderBook::print(std::ostream &os) const {
    print_ask(os);
    print_bid(os);
}

std::ostream& operator << (std::ostream& os, const BBO::OrderBook& ob) {
    ob.print(os);
    return os;
}

} // namespace BBO

