#!/bin/bash

mysql -h localhost -P9030 -uroot -e 'set global enable_parquet_filter_by_min_max=true; set global enable_parquet_lazy_materialization=true;'
cat queries.sql | while read -r query; do
    sync
    echo 3 | sudo tee /proc/sys/vm/drop_caches > /dev/null

    echo "$query";
    mysql -h localhost -P9030 -uroot test -vvv -e "${query}"
done;
