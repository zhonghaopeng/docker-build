#!/usr/bin/env bash
docker run -itd --name zookeeper --net=host --restart=always \
    --label team=cloud \
    --label project=cloud \
    --label service=zookeeper \
    -v /data/service/zookeeper/config:/conf \
    -v /data/service/zookeeper/data/data:/data \
    -v /data/service/zookeeper/data/datalog:/datalog \
    zhpkaka22/zookeeper:3.4
