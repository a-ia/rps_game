cmake_minimum_required(VERSION 3.10)
project(rps_game)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(rps_game main.cpp game.cpp)
