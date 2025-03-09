#pragma once

#include <iostream>
#include <memory>
#include <vector>

#include "MarketTypes.hpp"

namespace mkt {

/// @brief type for markets 
class Market 
{
protected:

    /// @brief market name
    std::string _market_name;

    //---------- Market properties

    int _liquidity_level;

    int _regulation_level;

public:
    //----------- Constructors

    Market(std::string market_name);

    //---------- getters

    std::string MarketName();
};

typedef std::unique_ptr<Market> up_mkt;
typedef std::shared_ptr<Market> sp_mkt;

} // namespace mkt