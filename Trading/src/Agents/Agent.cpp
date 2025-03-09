#include "Agent.hpp"

namespace agt {

//---------------------------------------- Constructors

Agent::Agent(std::string agent_name)
{
    _agent_name = agent_name;
}

//---------------------------------------- Getters

std::string Agent::AgentName()
{
    return _agent_name;
}

} // namespace agt
