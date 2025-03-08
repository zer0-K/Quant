#pragma once

#include <iostream>
#include <memory>
#include <map>

#include "Market.hpp"

namespace mkt {

/// @brief tells if markets were already created or not
inline bool __markets_were_created = false;

/** 'static' class that builds all markets
 * 
 * The markets are hardcoded to avoid config parsing issues,
 * and we ensure type validity by creating all market instances here
 */
class MarketBuilder 
{
private:
    /// @brief all markets, by name
    static std::map<std::string, up_mkt> _all_markets_by_name;

 
    static void buildMarkets();
public:

    // ---------- Getters

    static std::map<std::string, up_mkt> AllMarketsByName();
};

} // namespace mkt