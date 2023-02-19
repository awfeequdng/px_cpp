# 运行方式
make run


# 说明
- 目前只支持从rb2305.csv中读取行情，这个行情时从rb2305.hdf5中转换成的csv。我们留有了hdf5的接口，后面再实现
  - `md_csv_parser.*` 用来解析csv文件
  - `md_hdf5_parser.*` 用来解析hdf5文件（接口目前还没有实现）

- order_book是我们维护的book
  - 调用book中的onBookChange来进行更新
  - 调用book的query_large_orders来获取数量大于x的所有订单。order中的queue_position为正数时表示ask，为负数是表示bid


# 设计考量
- csv的解析采用开源库rapidcsv，不过没有测试过它的性能，只是为了方便使用而采取它。如果对性能有很高要求，可以直接解析rb2305.hdf5文件
- 读写队列我们采用开源的无锁队列实现：由于我们当前解析时使用到队列只有一个写线程，和一个读线程，所以采用的是读写队列的spsc版本（readerwriterqueue）。如果是多读或者多写，可能需要采用他的mpmc版本（concurrentqueue）
