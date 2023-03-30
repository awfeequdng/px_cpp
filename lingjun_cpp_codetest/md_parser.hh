#pragma once
#include <iostream>

#include "order_book.hh"
#include "readerwriterqueue/readerwriterqueue.h"
#include <memory>
#include <atomic>
#include <thread>

namespace BBO {

const int DEF_QUE_SZ = 10000;

class MarketDataParser {
public:
    MarketDataParser(int init_cap = DEF_QUE_SZ) : tick_que_(init_cap) {}
    virtual ~MarketDataParser() {
        if (parse_th.joinable()) {
            std::cout << "wait parse thread join" << std::endl;
            parse_th.join();
        }
    }
    bool eof() const {
        // std::cout << "eof: " << start_ << ", " << tick_in_que_ << " ," << tick_que_.size_approx() << std::endl;
        return start_.load(std::memory_order_relaxed) == false &&
               tick_in_que_.load(std::memory_order_relaxed) == 0;
    };

    inline std::shared_ptr<Tick> dequeue() {
        std::shared_ptr<Tick> tick;
        tick_que_.try_dequeue(tick);
        if (tick) {
            tick_in_que_.fetch_sub(1, std::memory_order_release);
        }
        return tick;
    }

    void start_parse(const std::string &fname) {
        if (start_.load(std::memory_order_relaxed)) {
            std::cerr << "market data parse having star." << std::endl;
            return;
        }
        start_.store(true, std::memory_order_relaxed);
        parse_th = std::thread(&MarketDataParser::parse, this, fname);
    }

protected:
    virtual void parse_md(const std::string& fname) = 0;
    bool enqueue(const std::shared_ptr<Tick>& tick) {
        // 必须保证tick_in_que_先加1，然后数据在进入队列，不然可能会提前退出（队列中还有数据）
        tick_in_que_.fetch_add(1, std::memory_order_acquire);
        auto ret = tick_que_.enqueue(tick);
        return ret;
    }
private:
    void parse(const std::string& fname) {
        parse_md(fname);
        start_.store(false, std::memory_order_relaxed);
    }
private:
    moodycamel::ReaderWriterQueue<std::shared_ptr<Tick>> tick_que_;
    std::atomic_bool start_{false};
    std::thread parse_th;
    std::atomic<uint32_t> tick_in_que_{0};
};

} // namespace BBO
