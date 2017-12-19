docker run -itd --name master --net=host --restart=always --pid=host \
    -e MESOS_ZK=zk://172.16.1.1:2181,172.16.1.2:2181,172.16.1.3:2181/mesos \
    -e MESOS_QUORUM=2 \
    -e MESOS_IP=172.16.1.1 \
    -e MESOS_HOSTNAME=172.16.1.1 \
    --label team=cloud \
    --label project=mesos \
    --label service=master \
    -v /data/docker/mesos/master/data/logs:/var/log/mesos \
    -v /data/docker/mesos/master/data/data:/tmp/mesos \
    zhpkaka22/mesos-master:1.2.0
