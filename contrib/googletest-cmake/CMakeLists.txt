set (SRC_DIR "${PROJECT_SOURCE_DIR}/googletest/googletest")

add_library(gtest "${SRC_DIR}/src/gtest-all.cc")
set_target_properties(gtest PROPERTIES VERSION "1.0.0")
target_compile_definitions (gtest PUBLIC GTEST_HAS_POSIX_RE=0)
target_include_directories(gtest SYSTEM PUBLIC "${SRC_DIR}/include")
target_include_directories(gtest PRIVATE "${SRC_DIR}")

add_library(_gtest_main "${SRC_DIR}/src/gtest_main.cc")
set_target_properties(_gtest_main PROPERTIES VERSION "1.0.0")
target_link_libraries(_gtest_main PUBLIC gtest)

add_library(_gtest_all INTERFACE)
target_link_libraries(_gtest_all INTERFACE gtest _gtest_main)
add_library(ch_contrib::gtest_all ALIAS _gtest_all)

install(
    TARGETS gtest
    EXPORT global
    LIBRARY DESTINATION .
    ARCHIVE DESTINATION .
)
