cmake_minimum_required(VERSION 3.13)
project(CPlusPlusStruct_CLion)

set(CMAKE_CXX_STANDARD 11)

add_executable(CPlusPlusStruct_CLion main.cpp src/Object.cpp src/Object.h src/Exception/Exception.cpp src/Exception/Exception.h src/SmartPointer.cpp src/SmartPointer.h)