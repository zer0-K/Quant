#include "CallEuropean.hpp"

namespace prdt {
namespace opt {

//---------- Constructors

CallEuropean::CallEuropean(float strike, float maturity)
{
    T = maturity;
    K = strike;
}

//---------- Product

float CallEuropean::payoff(float time)
{
    // TODO
    return 0;
}

//---------- Getters

float CallEuropean::Maturity()
{
    return T;
}

float CallEuropean::Strike()
{
    return K;
}

} // namespace opt
} // namespace prdt}