cmake_minimum_required (VERSION 3.1)
project (particle_swarm)
set (CMAKE_CXX_STANDARD 11)
SET (CMAKE_CXX_COMPILER "/usr/bin/clang++")
add_library(particle particle.cpp)
add_library(swarm swarm.cpp)

add_executable(testing test.cpp)
target_link_libraries(testing particle swarm)
