#!/bin/bash

set -e

# Skip Install
# Use for Doris (Parquet, partitioned)
seq 0 99 | xargs -P100 -I{} bash -c 'wget --continue https://datasets.clickhouse.com/hits_compatible/athena_partitioned/hits_{}.parquet'

# Run the queries
mysql -h localhost -P9030 -uroot test -vvv < create.sql
./run.sh 2>&1 | tee log.txt
