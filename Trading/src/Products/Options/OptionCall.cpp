#include "OptionCall.hpp"

OptionCall::OptionCall(float strike, float maturity)
{
    T = maturity;
    K = strike;
}

float OptionCall::get_maturity()
{
    return T;
}

float OptionCall::get_strike()
{
    return K;
}