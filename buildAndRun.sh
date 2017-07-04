docker build -t kamir/opentsdb_2.4.0_on_hbase_1.2.6 -t kamir/opentsdb . 

docker create \
    --name opentsdb-data \
    kamir/opentsdb

docker run \
    --name opentsdb-app-stack \
    --volumes-from opentsdb-data \
    -p 4242:4242 \
    kamir/opentsdb

