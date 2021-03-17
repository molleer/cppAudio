cmake_minimum_required(VERSION 3.19)
project(cppAudio)

set(CMAKE_CXX_STANDARD 17)
add_executable(cppAudio main.cpp)

add_subdirectory( openal-soft )
find_package( OpenAL REQUIRED )

target_link_libraries( cppAudio OpenAL )