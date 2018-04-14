#!/bin/bash

toree(){
	jupyter toree install --spark_home=$SPARK_HOME --interpreters=Scala,PySpark,SQL --user
	sleep 5
	rm toree-0.2.0.dev1.tar.gz
}

toree
