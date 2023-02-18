#include "md_csv_parser.hh"
#include <cstdint>
#include <iostream>
#include <memory>
#include <stdexcept>
#include <fstream>
#include <thread>
#include <chrono>

#include "rapidcsv/src/rapidcsv.h"

namespace BBO {

void MarketDataCsvParser::parse_md(const std::string &fname) {
    rapidcsv::Document doc(fname);
    auto row_cnt = doc.GetRowCount();
    for (int i = 0; i < row_cnt; i++) {
        std::shared_ptr<Tick> tick = std::make_shared<Tick>();
        // todo: 当心1.1表示为1.09999999这种问题
        tick->bid_px[0] = 10000 * doc.GetCell<double>("BPrice1", i);
        tick->ask_px[0] = 10000 * doc.GetCell<double>("SPrice1", i);
        tick->bid_sz[0] = doc.GetCell<uint32_t>("BVol1", i);
        tick->ask_sz[0] = doc.GetCell<uint32_t>("SVol1", i);
        // 1
        tick->bid_px[1] = 10000 * doc.GetCell<double>("BPrice2", i);
        tick->ask_px[1] = 10000 * doc.GetCell<double>("SPrice2", i);
        tick->bid_sz[1] = doc.GetCell<uint32_t>("BVol2", i);
        tick->ask_sz[1] = doc.GetCell<uint32_t>("SVol2", i);
        // 2
        tick->bid_px[2] = 10000 * doc.GetCell<double>("BPrice3", i);
        tick->ask_px[2] = 10000 * doc.GetCell<double>("SPrice3", i);
        tick->bid_sz[2] = doc.GetCell<uint32_t>("BVol3", i);
        tick->ask_sz[2] = doc.GetCell<uint32_t>("SVol3", i);
        // 3
        tick->bid_px[3] = 10000 * doc.GetCell<double>("BPrice4", i);
        tick->ask_px[3] = 10000 * doc.GetCell<double>("SPrice4", i);
        tick->bid_sz[3] = doc.GetCell<uint32_t>("BVol4", i);
        tick->ask_sz[3] = doc.GetCell<uint32_t>("SVol4", i);
        // 4
        tick->bid_px[4] = 10000 * doc.GetCell<double>("BPrice5", i);
        tick->ask_px[4] = 10000 * doc.GetCell<double>("SPrice5", i);
        tick->bid_sz[4] = doc.GetCell<uint32_t>("BVol5", i);
        tick->ask_sz[4] = doc.GetCell<uint32_t>("SVol5", i);

        while (!enqueue(tick)) {
            std::cerr << "enqueue failed in MarketDataCsvParser::parse_md" << std::endl;
            // sleep 1ms
            std::this_thread::sleep_for(std::chrono::microseconds(1));
        }
    }
    std::cout << "read csv over, row_cnt:" << row_cnt << std::endl;
}

} // namespace BBO