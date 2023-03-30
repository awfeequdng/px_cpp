#pragma once

#include "md_parser.hh"

namespace BBO {

class MarketDataHdf5Parser : public MarketDataParser {
public:
    void parse_md(const std::string& fname) override;
};

} // namepsace BBO