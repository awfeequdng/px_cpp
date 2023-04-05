CMAKE_MINIMUM_REQUIRED(VERSION 3.15.3)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
enable_language( C CXX ASM )

# set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_BUILD_TYPE Release)
set(BUILD_SHARED_LIBS ON)

message("Compiler Version: ${CMAKE_CXX_COMPILER_VERSION}")
message("Compiler ID: ${CMAKE_CXX_COMPILER_ID}")

# Turns on all external libs like s3, kafka, ODBC, ...
option(ENABLE_LIBRARIES "Enable all external libraries by default" ON)

include(cmake/arch.cmake)
include(cmake/target.cmake)
# # Ignore export() since we don't use it,
# # but it gets broken with a global targets via link_libraries()
# macro (export)
# endmacro ()

# Global libraries
# See:
# - default_libs.cmake
add_library(global-libs INTERFACE)

option(ENABLE_COLORED_BUILD "Enable colors in compiler output" ON)

set (CMAKE_COLOR_MAKEFILE ${ENABLE_COLORED_BUILD}) # works only for the makefile generator


add_library(global-group INTERFACE)
include(cmake/linux/default_libs.cmake)

option(WERROR "Enable -Werror compiler option" ON)

if (WERROR)
    # Don't pollute CMAKE_CXX_FLAGS with -Werror as it will break some CMake checks.
    # Instead, adopt modern cmake usage requirement.
    # TODO: Set CMAKE_COMPILE_WARNING_AS_ERROR (cmake 3.24)
    target_compile_options(global-group INTERFACE "-Werror")
endif ()

# Make this extra-checks for correct library dependencies.
target_link_options(global-group INTERFACE "LINKER:--no-undefined")

# add_contrib cmake_folder[ base_folder1[, ...base_folderN]]
function(add_contrib cmake_folder)
    if (ARGN)
        set(base_folders ${ARGN})
    else()
        set(base_folders ${cmake_folder})
    endif()

    foreach (base_folder ${base_folders})
        # some typos in the code
        if (NOT IS_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/${base_folder}")
            message(FATAL_ERROR "No such base folder '${base_folder}' (for '${cmake_folder}' cmake folder). Typo in the base folder name?")
        endif()

        file(GLOB contrib_files "${base_folder}/*")
        if (NOT contrib_files)
            # Checking out *all* submodules takes > 5 min. Therefore, the smoke build ("FastTest") in CI initializes only the set of
            # submodules minimally needed for a build and we cannot assume here that all submodules are populated.
            message(STATUS "submodule ${base_folder} is missing or empty. to fix try run:")
            message(STATUS "    git submodule update --init")
            return()
        endif()
    endforeach()

    message(STATUS "Adding contrib module ${base_folders} (configuring with ${cmake_folder})")
    add_subdirectory (${cmake_folder})
endfunction()

add_contrib(googletest-cmake googletest)
add_contrib(google-benchmark-cmake google-benchmark)
add_contrib(jemalloc-cmake jemalloc)
# add_subdirectory (contrib EXCLUDE_FROM_ALL)
# add_subdirectory (contrib)
# add_subdirectory(benchmark)
# add_subdirectory(googletest)
# add_subdirectory(jemalloc)

include_directories(
    ${PROJECT_SOURCE_DIR}/contrib/concurrentqueue
    ${PROJECT_SOURCE_DIR}/contrib/readerwriterqueue
)

file(GLOB_RECURSE
        LINGJUN_SRC
        CONFIGURE_DEPENDS  # Ask CMake to regenerate the build system if these files change.
        ${PROJECT_SOURCE_DIR}/src/*.cc
)

add_library(contrib SHARED
    ${LINGJUN_SRC}
)
target_link_libraries(contrib
    PUBLIC
    # ch_contrib::fmt
    pthread
    # ch_contrib::gtest_all
)

add_executable(contrib_main
    main.cc
)

target_link_libraries(contrib_main
    PUBLIC
    contrib
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

if (NOT ENABLE_JEMALLOC)
    message (WARNING "Non default allocator is disabled. This is not recommended for production builds.")
endif ()

set(CMAKE_INSTALL_PREFIX "/home/pxcai/source/px_cpp/lib/contrib")