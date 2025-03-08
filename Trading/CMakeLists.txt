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


# **************************************** markets

# ******************** common

set(HEADERS_MKT_ 
    #src/Markets/
)

set(SOURCES_MKT     
    #src/Markets/
)

# ******************** common/"global"

set(HEADERS_MARKETS 
    src/Markets/Market.hpp src/Markets/MarketBuilder.hpp src/Markets/MarketUtils.hpp
)

set(SOURCES_MARKETS     
    src/Markets/Market.cpp src/Markets/MarketBuilder.cpp src/Markets/MarketUtils.cpp
)



# **************************************** products

# ******************** options

set(HEADERS_PRDT_OPTIONS 
    src/Products/Options/Option.hpp
    src/Products/Options/CallEuropean.hpp
)

set(SOURCES_PRDT_OPTIONS     
    src/Products/Options/Option.cpp
    src/Products/Options/CallEuropean.cpp
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