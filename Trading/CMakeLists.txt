cmake_minimum_required(VERSION 3.30)
project(Trading)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Prefix
if (NOT PREFIX)
    set(PREFIX ${CMAKE_CURRENT_BINARY_DIR})
endif (NOT PREFIX)
set(CMAKE_INSTALL_PREFIX ${PREFIX} CACHE STRING "Installation prefix." FORCE)

if (CXX)
    set(CMAKE_CXX_COMPILER ${CXX})
endif (CXX)

set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake ${CMAKE_MODULE_PATH})
set(CMAKE_BUILD_TYPE Debug)

# **************************************** agents

# ******************** common/"global"

set(HEADERS_AGENTS 
    src/Agents/AgentIdentity.hpp src/Agents/AgentRole.hpp src/Agents/Agent.hpp 
)

set(SOURCES_AGENTS     
    src/Agents/AgentIdentity.cpp src/Agents/AgentRole.cpp src/Agents/Agent.cpp 
)

# **************************************** markets

# ******************** common/"global"

set(HEADERS_MARKETS 
    src/Markets/MarketTypes.hpp src/Markets/Market.hpp 
    src/Markets/MarketUtils.hpp
)

set(SOURCES_MARKETS     
    src/Markets/MarketTypes.cpp src/Markets/Market.cpp 
    src/Markets/MarketUtils.cpp
)



# **************************************** products

# ******************** options

set(HEADERS_PRDT_OPTIONS 
    src/Products/Contracts/Options/Option.hpp
    src/Products/Contracts/Options/CallEuropean.hpp
)

set(SOURCES_PRDT_OPTIONS     
    src/Products/Contracts/Options/Option.cpp
    src/Products/Contracts/Options/CallEuropean.cpp
)

# ******************** common

set(HEADERS_PRODUCTS 
    src/Products/Product.hpp
    ${HEADERS_PRDT_OPTIONS}
)

set(SOURCES_PRODUCTS     
    src/Products/Product.cpp
    ${SOURCES_PRDT_OPTIONS}
)

# ******************** MAIN

set(HEADERS_ALL
    ${HEADERS_PRODUCTS} ${HEADERS_MARKETS}
)

set(SOURCES_ALL
    ${SOURCES_PRODUCTS} ${SOURCES_MARKETS}
)


add_executable(trading src/main.cpp
    ${HEADERS_ALL} ${SOURCES_ALL}
)
target_link_libraries(trading ${LIBS})