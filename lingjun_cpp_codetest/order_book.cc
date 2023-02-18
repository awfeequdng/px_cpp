#include "order_book.hh"
#include <cstddef>
#include <cstdint>

namespace BBO {

void OrderBook::onBookChange(const Tick& tick) {
    removeOrders(tick);
    createOrders(tick);
}

std::vector<Order> OrderBook::query_large_orders(int quantity) {
    return {};
}

// return new header
Order* OrderBook::removeOrdersInChain(Order* order_head, uint32_t rm_sz, uint64_t ts) {
    auto node = order_head;
    while (node) {
        if (node->quantity < rm_sz) {
            rm_sz -= node->quantity;
            auto tmp = node;
            node = node->next;
            delete tmp;
            // todo: orders的索引还没有删除，
        } else if (node->quantity == rm_sz) {
            auto tmp = node;
            node = node->next;
            delete tmp;
            // todo: orders的索引还没有删除，
            return node;
        } else {
            node->quantity -= rm_sz;
            node->last_modification_time = ts;
            return node;
        }
    }

    return node;
}

// return 这new tail
Order* OrderBook::addOrdersInChain(Order* order_tail, uint32_t add_sz, uint64_t ts) {
    // 此时order_tail一定不为nullptr
    auto tail_pos = order_tail->queue_position;
    order_tail->next = new Order(add_sz, tail_pos + 1, ts);

    // todo: orders的索引还没有建立，用于快速query_large_orders
    return order_tail->next;
}

void OrderBook::createAskOrders(const Tick& tick) {
    HandicapNode dummy;
    dummy.next = ask_head;
    auto node = &dummy;
    for (size_t i = 0; i < MD_LEVELS; i++) {
        if (node->next == nullptr || (node->next->price > tick.ask_px[i])) {
            auto tmp = node->next;
            node->next = new HandicapNode(tick.ask_px[i], tick.ask_sz[i], tick.ts);
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
                node->next->head = removeOrdersInChain(order_head, rm_sz, tick.ts);
                if (node->next->head == nullptr) {
                    node->next->tail = nullptr;
                } else if (node->next->head->next == nullptr) {
                    // order链表中head是最后一个节点
                    node->next->tail = node->next->head;
                }
            } else if (node->next->qty < tick.ask_sz[i]) {
                auto order_tail = node->next->tail;
                auto add_sz = tick.ask_sz[i] - node->next->qty;
                node->next->tail = addOrdersInChain(order_tail, add_sz, tick.ts);
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
                node->next->head = removeOrdersInChain(order_head, rm_sz, tick.ts);
                if (node->next->head == nullptr) {
                    node->next->tail = nullptr;
                } else if (node->next->head->next == nullptr) {
                    // order链表中head是最后一个节点
                    node->next->tail = node->next->head;
                }
            } else if (node->next->qty < tick.bid_sz[i]) {
                auto add_sz = tick.bid_sz[i] - node->next->qty;
                auto order_tail = node->next->tail;
                node->next->tail = addOrdersInChain(order_tail, add_sz, tick.ts);
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

}

void OrderBook::removeOrders(const Tick& tick) {
    if (ask_head) {
        removeAskOrders(tick);
    }
    if (bid_head) {
        removeBidOrders(tick);
    }
}

} // namespace BBO

