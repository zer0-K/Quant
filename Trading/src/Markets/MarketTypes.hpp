#pragma once

#include <iostream>

namespace mkt {

/** Properties that a market can have
 * 
 * Non exclusive : a market can be OTC and organized
 */
enum class MarketTypes : uint32_t {
// organized vs OTC
    Organized = 0,
    OTC = 1 << 0,
// primary vs secondary
    Primary = 1 << 1,
    Secondary = 1 << 2,
// aution vs dealer
    Auction = 1 << 3,
    Dealer = 1 << 4,
// spot vs futures
    Spot = 1 << 5,
    Futures = 1 << 6,
// domestic vs international
    Domestic = 1 << 7,
    International = 1 << 8,
// Electronic vs physical
    Electronic = 1 << 9,
    Physic = 1 << 10,
// Wholesale vs retail
    Wholesale = 1 << 11,
    Retail = 1 << 12,
// Public vs private
    Public = 1 << 13,
    Private = 1 << 14,
// Continuous vs call
    Continous = 1 << 15,
    Call = 1 << 16
};

} // namespace mkt