#!/bin/bash

#BLACK HOLE
#https://ata.wiki.kernel.org/index.php/ATA_Secure_Erase
#head -c 32 /dev/urandom | sudo openssl enc -rc4 -nosalt -pass stdin -in /dev/zero -out /dev/sdb
#openssl enc -aes-256-ctr -pass pass:"$(dd if=/dev/urandom bs=128 count=1 2>/dev/null | base64)" -nosalt < /dev/zero | pv -pterb -s $(sudo blockdev --getsize64 /dev/sdb) | sudo dd of=/dev/sdb bs=1M

#https://github.com/jupyter/docker-stacks/tree/master/all-spark-notebook
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


#./0010_java.sh
#./0011_tools.sh

./0012_git.sh
./0013_r.sh
./0014_go.sh
./0015_mail.sh


source ~/.bashrc



#GRAPHICAL CARD
#./00G00_nvidia_pre.sh
#./00G01_cudNN.sh

edate
sendemail -f start.andras@gmail.com -t start.andras@gmail.com -u 1REBOOT -m "JAVA" -s smtp.gmail.com:587 -o tls=yes -xu start.andras@gmail.com -xp rAq0d0tromb
reboot now
