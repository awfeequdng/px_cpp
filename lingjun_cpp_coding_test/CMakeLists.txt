CMAKE_MINIMUM_REQUIRED(VERSION 3.15.3)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
enable_language( C CXX ASM )

set(CMAKE_BUILD_TYPE Debug)
# set(CMAKE_BUILD_TYPE Release)

message("Compiler Version: ${CMAKE_CXX_COMPILER_VERSION}")
message("Compiler ID: ${CMAKE_CXX_COMPILER_ID}")


# add_subdirectory (contrib EXCLUDE_FROM_ALL)
add_subdirectory (contrib)

include_directories(
    ${PROJECT_SOURCE_DIR}/src
    ${PROJECT_SOURCE_DIR}/src/order_book
    ${PROJECT_SOURCE_DIR}/src/md_parser
    ${PROJECT_SOURCE_DIR}/contrib/concurrentqueue
    ${PROJECT_SOURCE_DIR}/contrib/readerwriterqueue
    ${PROJECT_SOURCE_DIR}/contrib/rapidcsv

)

file(GLOB_RECURSE
        LINGJUN_SRC
        CONFIGURE_DEPENDS  # Ask CMake to regenerate the build system if these files change.
        ${PROJECT_SOURCE_DIR}/src/md_parser/*.cc
        ${PROJECT_SOURCE_DIR}/src/md_parser/*.hh
        ${PROJECT_SOURCE_DIR}/src/order_book/*.cc
        ${PROJECT_SOURCE_DIR}/src/order_book/*.hh
)

add_library(lingjun_core SHARED
    ${LINGJUN_SRC}
)
target_link_libraries(lingjun_core
    PUBLIC
    # ch_contrib::fmt
    pthread
)

add_executable(lingjun
    src/main.cc
)

target_link_libraries(lingjun
    PUBLIC
    lingjun_core
)

# 当前我的环境中采用的clang15, 而系统中的libcxx是gcc8.0，因此不能直接编译通过，目前没有时间来处理库的问题，导致gtest编译不通过，这个后面再处理吧
# 解决系统库问题有两种方法:
#  - 1. 升级系统中的gcc，将其升级到gcc12的版本，此时就能支持c++20了，并且系统下库的软链接可能也是需要替换的
#  - 2. 直接使用clang15 编译工程代码，然后同时从llvm官方获取libcxx和libcxxabi进行编译，最后让可执行程序和相应的库依赖这个编译出来的libcxx和libcxxabi，不需要直接依赖系统中的c++库文件
# 暂时不写gtest了
option(ENABLE_TESTS "Provide unit tests target with Google.Test unit tests" OFF)
if (ENABLE_TESTS)
    add_subdirectory(tests)
    enable_testing() # Enable for tests without binary
    message (STATUS "Unit tests are enabled")
else()
    message(STATUS "Unit tests are disabled")
endif ()



