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

add_library(dputil STATIC gettimeinmillis.cc gettimeinmillis.h tictoc.cc tictoc.h)

add_executable(dp_t1 dp_t1.cc)
target_link_libraries(dp_t1 dputil)

add_executable(dp_t2 dot_omp.cc)
target_link_libraries(dp_t2 dputil)
