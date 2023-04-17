add_library(harmful harmful.c)
install(TARGETS harmful EXPORT global ARCHIVE DESTINATION .)
# install(TARGETS harmful EXPORT global ARCHIVE DESTINATION lib)
