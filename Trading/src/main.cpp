#include <iostream>

#include "Products/Options/CallEuropean.hpp"

int main(int argc, char* argv[])
{
    prdt::opt::up_call_eu call = std::make_unique<prdt::opt::CallEuropean>(12, 5);

    std::cout << "Created call with strike " 
        << call->Strike() << " and maturity "
        << call->Maturity() << std::endl;

    return 0;
}