cmake_minimum_required(VERSION 3.21.3)

project(Demo3)

aux_source_directory(. DIR_SRCS)

# 添加math子目录
add_subdirectory(math)

# 将名为 main.cpp 的源文件编译成一个名称为 Demo 的可执行文件。
add_executable(Demo main.cpp)

# 添加链接库MathFunctions到Demo程序中
target_link_libraries(Demo MathFunctions)