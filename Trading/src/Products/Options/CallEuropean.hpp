#pragma once

#include <memory>

#include "Option.hpp"

namespace prdt {
namespace opt {

class CallEuropean : Option 
{
protected:

    /// @brief strike
    float K;

    /// @brief maturity
    float T;

public:
    //----------- Constructors

    CallEuropean(float strike, float maturity);

    //---------- Product

    float payoff(float time) override;

    //---------- Getters

    float Strike();
    float Maturity();
};

typedef std::unique_ptr<CallEuropean> up_call_eu;
typedef std::shared_ptr<CallEuropean> sp_call_eu;

} // namespace opt
} // namespace prdt