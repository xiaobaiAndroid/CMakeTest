# CMake generated Testfile for 
# Source directory: /Users/bzf/Desktop/Cmake/Demo5
# Build directory: /Users/bzf/Desktop/Cmake/Demo5/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(test_run "Demo5" "5" "2")
set_tests_properties(test_run PROPERTIES  _BACKTRACE_TRIPLES "/Users/bzf/Desktop/Cmake/Demo5/CMakeLists.txt;46;add_test;/Users/bzf/Desktop/Cmake/Demo5/CMakeLists.txt;0;")
add_test(test_usage "Demo5")
set_tests_properties(test_usage PROPERTIES  PASS_REGULAR_EXPRESSION "请依次输入: 底数 指数" _BACKTRACE_TRIPLES "/Users/bzf/Desktop/Cmake/Demo5/CMakeLists.txt;49;add_test;/Users/bzf/Desktop/Cmake/Demo5/CMakeLists.txt;0;")
add_test(test_5_2 "Demo5" "5" "2")
set_tests_properties(test_5_2 PROPERTIES  PASS_REGULAR_EXPRESSION "is 25" _BACKTRACE_TRIPLES "/Users/bzf/Desktop/Cmake/Demo5/CMakeLists.txt;54;add_test;/Users/bzf/Desktop/Cmake/Demo5/CMakeLists.txt;0;")
add_test(test_10_5 "Demo5" "10" "5")
set_tests_properties(test_10_5 PROPERTIES  PASS_REGULAR_EXPRESSION "is 100000" _BACKTRACE_TRIPLES "/Users/bzf/Desktop/Cmake/Demo5/CMakeLists.txt;58;add_test;/Users/bzf/Desktop/Cmake/Demo5/CMakeLists.txt;0;")
subdirs("math")
