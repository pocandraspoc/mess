#!/bin/bash

/home/otp/kafka/kafka_2.11-1.0.0/bin/zookeeper-server-start.sh /home/otp/kafka/kafka_2.11-1.0.0/config/zookeeper.properties &

sleep 5 

/home/otp/kafka/kafka_2.11-1.0.0/bin/kafka-server-start.sh /home/otp/kafka/kafka_2.11-1.0.0/config/server.properties &

sleep 5

jupyter notebook &

sleep 5

echo "ready"
