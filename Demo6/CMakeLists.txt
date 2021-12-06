cmake_minimum_required(VERSION 2.8)

project(Demo6)

# 添加主版本号和副版本号
set(Demo6_VERSION_MAJOR 1)
set(Demo6_VERSION_MINOR 0)


set(CMAKE_INCLUDE_CURRENT_DIR ON)

option(USE_MYMATH "用自己的函数求一个数的幂" ON)


# 检查系统是否支持 pow函数
include(${CMAKE_ROOT}/Modules/CheckFunctionExists.cmake)
check_function_exists(pow HAVE_POW)

configure_file(
    "${PROJECT_SOURCE_DIR}/config.h.in"
    "${PROJECT_BINARY_DIR}/config.h"
)

if(USE_MYMATH)
    include_directories("${PROJECT_SOURCE_DIR}/math")
    add_subdirectory(math)
    set(EXTRA_LIBS MathFunctions)
endif(USE_MYMATH)

# 查找当前目录下的所以源文件，并将名称保存到 DIR_SRCS变量中
aux_source_directory(. DIR_SRCS)

add_executable(Demo6 ${DIR_SRCS})

target_link_libraries(Demo6 ${EXTRA_LIBS})


