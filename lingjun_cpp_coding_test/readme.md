# 编译、运行(当前编译环境因素，系统的libcxx库还不能很好地支持c++20，导致gtest编译不能通过，目前没时间处理系统库的问题，所以当前暂时不用gtest做测试)
git submodule init
git submodule update
mkdir build
cd build
cmake ..
make -j
./lingjun ../data/rb2305.csv


# 说明
- 目前只支持从rb2305.csv中读取行情，这个行情时从rb2305.hdf5中转换成的csv。我们留有了hdf5的接口，后面再实现
  - `md_csv_parser.*` 用来解析csv文件
  - `md_hdf5_parser.*` 用来解析hdf5文件（接口目前还没有实现）
  - 当前csv和hdf5的行情数据放在data目录下

- order_book是我们维护的book
  - 调用book中的onBookChange来进行更新
  - 调用book的query_large_orders来获取数量大于x的所有订单。order中的queue_position为正数时表示ask，为负数是表示bid


# 设计考量
- csv的解析采用开源库rapidcsv，不过没有测试过它的性能，只是为了方便使用而采取它。如果对性能有很高要求，可以直接解析rb2305.hdf5文件
- 读写队列我们采用开源的无锁队列实现：由于我们当前解析时使用到队列只有一个写线程，和一个读线程，所以采用的是读写队列的spsc版本（readerwriterqueue）。如果是多读或者多写，可能需要采用他的mpmc版本（concurrentqueue）


# 特别注意的点
在将浮点数转换成整数时，可能会出现如下情况：
- 1.1 的浮点数可能表示为1.0999999999999999, 放大10000倍后转换成正数后可能的值为10999，而不是11000

# 使用valgrind对程序进行分析：
- 内存检测：
```
$ valgrind --leak-check=full ./lingjun ../data/rb2305.csv
==12694==
==12694== HEAP SUMMARY:
==12694==     in use at exit: 0 bytes in 0 blocks
==12694==   total heap usage: 591,196 allocs, 591,196 frees, 88,436,010 bytes allocated
==12694==
==12694== All heap blocks were freed -- no leaks are possible
==12694==
==12694== For lists of detected and suppressed errors, rerun with: -s
==12694== ERROR SUMMARY: 0 errors from 0 contexts (suppressed: 0 from 0)
```
从检测结果看，该程序是没有内存泄漏问题的


- callgrind
```
$ valgrind --tool=callgrind ./lingjun ../data/rb2305.csv
生成的callgrind 文件在根目录下： callgrind.out.2406

```
查看callgrind文件
```

```

