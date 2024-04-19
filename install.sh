#!/bin/bash

#data, logs 저장 디렉토리 생성
mkdir -p /data/elasticsearch/data;
mkdir -p /data/elasticsearch/logs;
mkdir -p /data/logstash/pipeline;
mkdir -p /data/kibana/data;
mkdir -p /data/kibana/logs;
mkdir -p /data/kibana/plugins;


#data, logs 저장 디렉토리 권한 설정
chmod 777 -R /data/elasticsearch/;
chmod 777 -R /data/logstash/;
chmod 777 -R /data/kibana/;

sysctl -w vm.max_map_count=262144;

echo vm.max_map_count=262144 >> /etc/sysctl.conf;

cd /home/ubuntu/dev;

#rm -rf /home/ubuntu/dev/elastalert2-server;

#git clone https://github.com/karql/elastalert2-server.git;


#docker compose off
#down=$(docker compose down)
#echo $down 

#docker compose on
#up=$(docker compose up -d)
#echo up

