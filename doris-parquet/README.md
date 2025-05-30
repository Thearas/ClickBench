# Doris Parquet

`queries.sql` 从 `clickhouse-parquet/queries.sql` 通过 [Doris SQL Convertor](https://play.selectdb.com/sql-convertor) 转换而来。

1. 本地启动一个 1fe1be 的 Doris，机器配置 c6a.4xlarge + 500 GB gp2。
2. 跑 `benchmark.sh`，它会：
    1. 下载 100 个 hints parquet 文件到本地
    2. 跑 `create.sql` 创建测试表
    3. 跑 `run.sh`，开始测试

## 参考

- [clickhouse-parquet](../clickhouse-parquet/)
- [duckdb-parquet](../duckdb-parquet/)
