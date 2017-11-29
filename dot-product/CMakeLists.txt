#
#
#

project (dot-product)
cmake_minimum_required(VERSION 3.5)

find_package(OpenMP)
if (OPENMP_FOUND)
    set (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${OpenMP_C_FLAGS}")
    set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OpenMP_CXX_FLAGS}")
endif()

add_executable(dp_t1 dp_t1.cc gettimeinmillis.cc gettimeinmillis.h)

