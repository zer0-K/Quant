#pragma once

#include <memory>

class OptionCall 
{
protected:

    /// @brief strike
    float K;

    /// @brief maturity
    float T;

public:
    OptionCall(float strike, float maturity);

    //---------- getters

    float get_strike();
    float get_maturity();
};

typedef std::shared_ptr<OptionCall> sp_option_call;