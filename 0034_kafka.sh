#!/bin/bash

wget http://xenia.sote.hu/ftp/mirrors/www.apache.org/kafka/1.0.0/kafka_2.11-1.0.0.tgz -P  ~/kafka2/
mkdir ~/kafka
tar -xzf ~/kafka2/kafka_2.11-1.0.0.tgz -C ~/kafka/

rm ~/kafka2/kafka_2.11-1.0.0.tgz
rm ~/kafka2 -fr

#start a ZooKeeper 
#bin/zookeeper-server-start.sh config/zookeeper.properties
###/home/otp/kafka/kafka_2.11-1.0.0/bin/zookeeper-server-start.sh /home/otp/kafka/kafka_2.11-1.0.0/config/zookeeper.properties

#start the Kafka server
#/home/otp/kafka/kafka_2.11-1.0.0/bin/kafka-server-start.sh /home/otp/kafka/kafka_2.11-1.0.0/config/server.properties

#create a topic named "test" with a single partition and only one replica:
#bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic test

#see that topic if we run the list topic command
#bin/kafka-topics.sh --list --zookeeper localhost:2181

#Run the producer and then type a few messages into the console to send to the server.
#bin/kafka-console-producer.sh --broker-list localhost:9092 --topic test
#Type here something to send

#Kafka also has a command line consumer that will dump out messages to standard output.
#bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic test --from-beginning

#https://kafka.apache.org/quickstart#quickstart_consume


#https://github.com/nailor/kafka-python-demo/blob/master/Kafka%20Demo.ipynb

#https://github.com/chiayongjian/twitter-kafka-sparkstreaming/blob/master/Twitter%20to%20Kafka.ipynb
#https://github.com/chiayongjian/twitter-kafka-sparkstreaming/blob/master/Twitter%20to%20Kafka.ipynb
#https://kafka.apache.org/quickstart#quickstart_consume

#https://stackoverflow.com/questions/33273587/how-to-write-a-file-to-kafka-producer


