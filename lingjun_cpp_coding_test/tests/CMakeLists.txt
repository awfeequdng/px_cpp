add_executable(test_on_book_change
    test_on_book_change.cc
)

target_link_libraries(test_on_book_change
    ch_contrib::gtest_all
    lingjun_core
)

add_executable(test_query_large_orders
    test_query_large_orders.cc
)

target_link_libraries(test_query_large_orders
    ch_contrib::gtest_all
    lingjun_core
)
