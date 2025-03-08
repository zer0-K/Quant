#pragma once

#include <memory>

#include "../Product.hpp"

namespace prdt {
namespace opt {

class Option : Product 
{

};

typedef std::unique_ptr<Option> up_opt;
typedef std::shared_ptr<Option> sp_opt;

} // namespace opt
} // namespace prdt