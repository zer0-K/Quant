#include <iostream>

#include "Products/Options/OptionCall.hpp"

int main(int argc, char* argv[])
{
    sp_option_call call = std::make_shared<OptionCall>(12, 5);

    std::cout << "Created call with strike " 
        << call->get_strike() << " and maturity "
        << call->get_maturity() << std::endl;

    return 0;
}