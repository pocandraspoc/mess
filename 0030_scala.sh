#!/bin/bash

#isntall scala
apt-get remove scala-library scala
wget https://downloads.lightbend.com/scala/2.11.8/scala-2.11.8.tgz
tar xvzf scala-2.11.8.tgz
rm scala-2.11.8.tgz
mv scala-2.11.8 /usr/local/share/scala

echo 'export SCALA_HOME=/usr/local/share/scala' >> ~/.bashrc
echo 'export PATH=$PATH:$SCALA_HOME/bin' >> ~/.bashrc
