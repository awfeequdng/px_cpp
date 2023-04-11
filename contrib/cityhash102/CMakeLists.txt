add_library(cityhash
	src/city.cc
	include/citycrc.h
	include/city.h
	src/config.h)

target_include_directories(cityhash SYSTEM BEFORE PUBLIC include)
target_include_directories(cityhash SYSTEM PRIVATE src)

add_library(ch_contrib::cityhash ALIAS cityhash)

install(
    TARGETS cityhash
    EXPORT global
    LIBRARY DESTINATION .
    ARCHIVE DESTINATION .
    # LIBRARY DESTINATION lib
    # ARCHIVE DESTINATION lib
)
