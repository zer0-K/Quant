#include "MarketBuilder.hpp"

namespace mkt {

std::map<std::string, up_mkt> MarketBuilder::_all_markets_by_name {

};

void MarketBuilder::buildMarkets()
{
    __markets_were_created = true;
}

// ---------------------------------------- getters

std::map<std::string, up_mkt> MarketBuilder::AllMarketsByName()
{
    if(!__markets_were_created)
        MarketBuilder::buildMarkets();

    return std::move(_all_markets_by_name);
}

} // namespace mkt
