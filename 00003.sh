#!/bin/bash

sdate(){
	SSTR="Start Time:"
	SDATE=$(date)
}
edate(){
	ESTR="End Time:"
	EDATE=$(date)
  	echo $SSTR
	echo $SDATE
	echo $ESTR
	echo $EDATE
}
sdate

./0020_oracle.sh
./0040_chrome.sh
./0033_jupyter_spark.sh
./0042_docker.sh



#./0041_inteli.sh


source ~/.bashrc

edate
reboot now
