#!/bin/bash


wget http://xenia.sote.hu/ftp/mirrors/www.apache.org/spark/spark-2.2.0/spark-2.2.0-bin-hadoop2.7.tgz
tar xvzf spark-2.2.0-bin-hadoop2.7.tgz
rm spark-2.2.0-bin-hadoop2.7.tgz
mv spark-2.2.0-bin-hadoop2.7 /usr/local/share/scala

echo 'export SPARK_HOME=/usr/local/share/scala/spark-2.2.0-bin-hadoop2.7' >> ~/.bashrc
echo 'export PATH=$SPARK_HOME/bin:$PATH' >> ~/.bashrc

echo 'export PYSPARK_DRIVER_PYTHON=jupyter' >> ~/.bashrc
echo 'export PYSPARK_DRIVER_PYTHON_OPTS='notebook'' >> ~/.bashrc

chown -R otp:otp /home/otp/.local/share/jupyter
source ~/.bashrc

#http://mkuthan.github.io/blog/2016/09/30/spark-streaming-on-yarn/
