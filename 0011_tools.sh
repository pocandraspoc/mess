#!/bin/bash
pip_in(){

	NOTE="Install python pip"
	echo $NOTE
	apt-get update
	apt-get -y upgrade
	
	apt-get install unzip -y
	apt-get install python-setuptools -y
	apt-get install python-pip -y
	apt-get install python-dev -y	
	apt-get install python-numpy -y
	apt-get install python-wheel -y
	apt-get install libcupti-dev -y
	apt-get install ipython-notebook -y

	pip install --upgrade pip
	pip install ipython
	pip install requests 
	pip install tabulate	
	pip install tensorflow
	pip install tweepy
	pip install pykafka
	pip install kafka-python
	pip install pandas

	apt-get -y install python3-pip
	python3 -m pip install ipykernel
	pip install --upgrade "ipython[all]"

}

nano_in(){
	apt-get install nano -y
	echo "nano installed"
}

subl_in(){
	echo -ne '\n' | add-apt-repository ppa:webupd8team/sublime-text-2
	apt-get update
	apt-get install sublime-text -y

}

vlc_in(){
	apt-get install vlc browser-plugin-vlc -y
}

skype_in(){

	wget https://repo.skype.com/latest/skypeforlinux-64.deb
	dpkg -i skypeforlinux-64.deb
	apt-get install -f
	rm skypeforlinux-64.deb
	rm linux-firmware_1.161.1_all.deb
	
}

tools(){
	#pip_in
	skype_in
	vlc_in
	nano_in
	subl_in
	echo "Useful tools"
}

tools
