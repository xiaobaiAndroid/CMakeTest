cmake_minimum_required(VERSION 2.8)

project(Demo5)


set(CMAKE_INCLUDE_CURRENT_DIR ON)

# 是否使用自己的 MathFunctions库，默认OFF,不使用
# 类似java定义一个boolean类型的变量 boolean USE_MYMATH = false
option(USE_MYMATH "Use provided math implementation" ON)

# 将文件config.h.in复制到config.h并修改其内容
configure_file(
    "${PROJECT_SOURCE_DIR}/config.h.in"
    "${PROJECT_BINARY_DIR}/config.h"
)

# 是否加入MathFunction库
if(USE_MYMATH)
    include_directories("${PROJECT_SOURCE_DIR}/math")
    add_subdirectory(math)
    set(EXTRA_LIBS MathFunctions)

    message("EXTRA_LIBS的值为: ${EXTRA_LIBS}")
endif(USE_MYMATH)

# 查找当前目录下的所有源文件
# 并将名称保存到 DIR_SRCS 变量
aux_source_directory(. DIR_SRCS)

# 指定生成目标
add_executable(Demo5 ${DIR_SRCS})

# 添加链接库
target_link_libraries(Demo5 ${EXTRA_LIBS})

# 指定安装路径
install(TARGETS Demo5 DESTINATION bin)
install(FILES "${PROJECT_BINARY_DIR}/config.h" DESTINATION include)


# 启动测试
enable_testing()

# 测试程序是否成功运行
add_test(test_run Demo5 5 2)

# 测试帮助信息是否可以正常显示
add_test(test_usage Demo5)
#PASS_REGULAR_EXPRESSION: test_usage这个测试的输出必须与此标识后面的正则表达式匹配。进程退出代码被忽略。
set_tests_properties(test_usage PROPERTIES PASS_REGULAR_EXPRESSION "请依次输入: 底数 指数")

# 测试5的平方
add_test(test_5_2 Demo5 5 2)

set_tests_properties(test_5_2 PROPERTIES PASS_REGULAR_EXPRESSION "is 25")

add_test(test_10_5 Demo5 10 5)

set_tests_properties(test_10_5 PROPERTIES PASS_REGULAR_EXPRESSION "is 100000")

