#pragma once

#include <iostream>
#include <memory>
#include <vector>

namespace agt {

/// @brief agent in financial markets 
class Agent 
{
protected:

    /// @brief agent name
    std::string _agent_name;

    //---------- Agent properties


public:
    //----------- Constructors

    Agent(std::string agent_name);

    //---------- getters

    std::string AgentName();
};

typedef std::unique_ptr<Agent> up_agt;
typedef std::shared_ptr<Agent> sp_agt;

} // namespace agt
