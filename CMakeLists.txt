cmake_minimum_required (VERSION 2.8)
project (travis-test)
add_executable(travis-test main.cpp)

enable_testing()
add_test(NAME tst1
         COMMAND mytest.sh $<TARGET_FILE:travis-test>)
