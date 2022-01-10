#!/bin/bash -xe

i=1
while [ "$i" -lt "$1" ]
do
   echo "============== creating container $i =============="
   docker run -itd --name container$i --hostname container$i -p 809$i:8080 c5b782b0f4c5/mydev-server:1.0 /bin/bash
   echo "$(docker inspect --format '{{.NetworkSettings.Networks.bridge.IPAddress}}' container$i)"
   docker cp /home/coderr/.jenkins/workspace/container-make_Deply/target/mvn-project.war container$i:/apache-tomcat-9.0.56/webapps/
   i=$(($i+1))

done

