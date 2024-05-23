cmake_minimum_required(VERSION 3.6)
project(Trading)

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

# ******************** products

set(HEADERS_PRODUCTS 
    # ********** Options
    src/Products/Options/OptionCall.hpp
)

set(SOURCES_PRODUCTS     
    # ********** Options
    src/Products/Options/OptionCall.cpp
)

# ******************** MAIN

set(HEADERS_ALL
    ${HEADERS_PRODUCTS}
)

set(SOURCES_ALL
    ${SOURCES_PRODUCTS}
)


add_executable(trading src/main.cpp
    ${HEADERS_ALL} ${SOURCES_ALL}
)
target_link_libraries(trading ${LIBS})