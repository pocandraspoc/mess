#!/bin/bash

wget -c https://dist.apache.org/repos/dist/dev/incubator/toree/0.2.0/snapshots/dev1/toree-pip/toree-0.2.0.dev1.tar.gz
pip install toree-0.2.0.dev1.tar.gz


#jupyter toree install --spark_home=$SPARK_HOME --interpreters=Scala,PySpark,SQL --user


#jupyter notebook --no-browser
#jupyter notebook --ip=0.0.0.0  --port=8888 --no-browser
