#include "Market.hpp"

namespace mkt {

Market::Market(std::string market_name)
{
    _market_name = market_name;
}

std::string Market::MarketName()
{
    return _market_name;
}

} // namespace mkt
