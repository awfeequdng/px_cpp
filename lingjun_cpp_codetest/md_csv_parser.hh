#pragma once
#include "md_parser.hh"

namespace BBO {

class MarketDataCsvParser : public MarketDataParser {
public:
    void parse_md(const std::string& fname) override;
};

}