docker pull zhpkaka22/mesos-slave:1.2.0
docker rm -f slave
docker run -itd --name slave --net=host --privileged --restart=always --pid=host \
    -e MESOS_HOSTNAME=172.16.1.1 \
    -e MESOS_IP=172.16.1.1 \
    -e MESOS_MASTER=zk://172.16.1.1:2181,172.16.1.2:2181,172.16.1.3:2181/mesos \
    -e MESOS_RESOURCES='cpus:36;mem:26624;cpus(cloud):4;mem(cloud):4096' \
    --label team=cloud \
    --label project=mesos \
    --label service=slave \
    -v /usr/bin/docker:/usr/bin/docker:ro \
    -v /data/docker/mesos/slave/data/data:/tmp/mesos \
    -v /data/docker/mesos/slave/data/logs:/var/log/mesos \
    -v /var/run/docker.sock:/var/run/docker.sock:ro \
    -v /sys/fs/cgroup:/sys/fs/cgroup \
    zhpkaka22/mesos-slave:1.2.0
