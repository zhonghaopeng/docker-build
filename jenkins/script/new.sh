docker pull hub.autozi.net/library/jenkins:2.32.2
docker rm -f jenkins
docker run -itd --name jenkins --restart=always -p 7000:8080 -p 50000:50000 \
    -v /usr/bin/docker:/usr/bin/docker \
    -v /var/run/docker.sock:/var/run/docker.sock:ro \
    -v /data/service/jenkins/data/jenkins_home:/var/jenkins_home \
    -v /data/service/jenkins/data/data:/data \
    hub.autozi.net/library/jenkins:2.32.2
docker logs -f jenkins
