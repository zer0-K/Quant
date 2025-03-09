#pragma once

#include <iostream>
#include <memory>
#include <vector>

namespace agt {

/// @brief agent identity (bank, fund,...) 
class AgentIdentity 
{
public:
    //----------- Constructors

    AgentIdentity();
};

typedef std::unique_ptr<AgentIdentity> up_agt_id;
typedef std::shared_ptr<AgentIdentity> sp_agt_id;

} // namespace agt
