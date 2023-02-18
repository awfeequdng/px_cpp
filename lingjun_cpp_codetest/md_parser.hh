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
    virtual bool eof() const {
        return start_.load(std::memory_order_relaxed) == false &&
               tick_in_que_.load(std::memory_order_relaxed) == 0;
    };

    inline std::shared_ptr<Tick> dequeue() {
        if (!start_.load(std::memory_order_relaxed)) {
            // not start parse market data yet
            return {};
        }
        std::shared_ptr<Tick> tick;
        tick_que_.try_dequeue(tick);
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
        return tick_que_.enqueue(tick);
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