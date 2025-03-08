#pragma once

#include <memory>

namespace prdt {

class Product 
{
public:

    virtual float payoff(float time) = 0;

};

typedef std::unique_ptr<Product> up_prdt;
typedef std::shared_ptr<Product> sp_prdt;

} // namespace prdt