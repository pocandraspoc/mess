#!/bin/bash
sdate(){
	SSTR="Start Time:"
	SDATE=$(date)
	echo $SSTR
	echo $SDATE
}

edate(){
	ESTR="End Time:"
	EDATE=$(date)
	echo $ESTR
	echo $EDATE
}

timer(){
	echo $SDATE
	echo $EDATE
}

rm_java(){
	echo "Removing all the Java stuff"
	sdate

	rm_j_pack
	rm_j_conf
	rm_j_dir
	rm_j_jvm
	rm_j_ente

	echo "All JAVA Stuff removed!!!"
	
	edate
	timer
}

rm_j_pack(){
	NOTE="Remove all the Java related packages (Sun, Oracle, OpenJDK, IcedTea plugins, GIJ):"
	dpkg-query -W -f='${binary:Package}\n' | grep -E -e '^(ia32-)?(sun|oracle)-java' -e '^openjdk-' -e '^icedtea' -e '^(default|gcj)-j(re|dk)' -e '^gcj-(.*)-j(re|dk)' -e '^java-common' | xargs apt-get -y remove
	apt-get -y autoremove
	echo $NOTE
}

rm_j_conf(){
	NOTE="Purge config files:"
	dpkg -l | grep ^rc | awk '{print($2)}' | xargs apt-get -y purge
	echo $NOTE
}

rm_j_dir(){
	NOTE="Remove Java config and cache directory:"
	bash -c 'ls -d /home/*/.java' | xargs rm -rf
	echo $NOTE

}

rm_j_jvm(){
	NOTE="Remove manually installed JVMs:"
	rm -rf /usr/lib/jvm/*
	echo $NOTE
}

rm_j_ente(){
	NOTE="Remove Java entries, if there is still any, from the alternatives:"
	for g in ControlPanel java java_vm javaws jcontrol jexec keytool mozilla-javaplugin.so orbd pack200 policytool rmid rmiregistry servertool tnameserv unpack200 appletviewer apt extcheck HtmlConverter idlj jar jarsigner javac javadoc javah javap jconsole jdb jhat jinfo jmap jps jrunscript jsadebugd jstack jstat jstatd native2ascii rmic schemagen serialver wsgen wsimport xjc xulrunner-1.9-javaplugin.so; do update-alternatives --remove-all $g; done	
	echo $NOTE
}

java_in(){
	add-apt-repository -y ppa:webupd8team/java
	apt-get update

	echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
	echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
	
	apt-get -y install oracle-java8-installer 

}
java_conf(){
	NOTE="Set Java_HOME envir var correctly"
	export JAVA_HOME=`type -p javac|xargs readlink -f|xargs dirname|xargs dirname`
	
	echo "JAVA_HOME="\""$JAVA_HOME"\""" >> /etc/environment
	echo "PATH="\""$JAVA_HOME/bin:$PATH"\""" >> /etc/environment
	
	source /etc/environment
	
	echo $NOTE
}

set_up(){
	apt-get update
	apt-get upgrade -y
}

dis_ipv6(){
	dis=$(cat /proc/sys/net/ipv6/conf/all/disable_ipv6)

	if [ $dis -eq 0 ]; then
		echo "IPV 6 Enabled yet!"
		echo 'net.ipv6.conf.all.disable_ipv6 = 1' >> /etc/sysctl.conf
		echo 'net.ipv6.conf.default.disable_ipv6 = 1' >> /etc/sysctl.conf
		echo 'net.ipv6.conf.lo.disable_ipv6 = 1' >> /etc/sysctl.conf
		#reboot now
		echo "PLS Reboot to dis"
	#perl -pi -e 's/Port 22/Port 22/g' /etc/ssh/sshd_config
	else
		echo "IPV 6 disabled"
		sleep 1
		sleep 0.5
		echo "Thx"
	fi
}

java_new(){
	
	rm_java
	java_in
	java_conf
	echo "Totaly Purge, Install and Conf Java"
}



set_up
java_new
dis_ipv6

