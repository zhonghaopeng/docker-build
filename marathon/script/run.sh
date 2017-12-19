#LIBPROCESS_IP为本机地址
docker run -itd --name marathon --net=host -e LIBPROCESS_IP=172.16.1.1 --restart=always \
    --label team=cloud \
    --label project=marathon \
    --label service=web \
    mesosphere/marathon --master zk://172.16.1.1:2181,172.16.1.2:2181,172.16.1.3:2181/mesos --zk zk://172.16.1.1:2181,172.16.1.2:2181,172.16.1.3:2181/marathon --hostname 172.16.1.1 --http_address 172.16.1.1 --event_subscriber http_callback
