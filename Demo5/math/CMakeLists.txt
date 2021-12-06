# 查找当前目录下的所有文件，并将名称保存到 DIR_LIB_SRCS这个变量
aux_source_directory(. DIR_LIB_SRCS)

# 将DIR_LIB_SRCS包含所有文件打包生成名称为MathFunctions的静态链接库
add_library(MathFunctions ${DIR_LIB_SRCS})

# 指定MathFunctions库的安装路径
install(TARGETS MathFunctions DESTINATION bin)
install(FILES MathFunctions.h DESTINATION include)