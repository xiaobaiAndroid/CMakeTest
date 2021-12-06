cmake_minimum_required(VERSION 2.8)

project(Demo4)


set(CMAKE_INCLUDE_CURRENT_DIR ON)

# 是否使用自己的 MathFunctions库，默认NO,不使用
# 类似java定义一个boolean类型的变量 boolean USE_MYMATH = false
option(USE_MYMATH "Use provided math implementation" ON)

# 加入一个配置文件，用于处理CMake对源码的设置
configure_file(
    "${PROJECT_SOURCE_DIR}/config.h.in"
    "${PROJECT_BINARY_DIR}/config.h"
)

# 是否加入MathFunction库
if(USE_MYMATH)
    include_directories("${PROJECT_SOURCE_DIR}/math")
    add_subdirectory(math)
    set(EXTRA_LIBS ${EXTRA_LIBS} MathFunctions)
endif(USE_MYMATH)

# 查找当前目录下的所有源文件
# 并将名称保存到 DIR_SRCS 变量
aux_source_directory(. DIR_SRCS)

# 指定生成目标
add_executable(Demo4 ${DIR_SRCS})

# 添加链接库
target_link_libraries(Demo4 ${EXTRA_LIBS})
