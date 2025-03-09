#pragma once

#include <iostream>
#include <memory>
#include <vector>

namespace agt {

/// @brief agent identity (bank, fund,...) 
class AgentRole 
{
public:
    //----------- Constructors

    AgentRole();
};

typedef std::unique_ptr<AgentRole> up_agt_role;
typedef std::shared_ptr<AgentRole> sp_agt_role;

} // namespace agt
