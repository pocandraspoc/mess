#!/bin/bash
go_lang(){
	add-apt-repository ppa:gophers/archive -y
	apt update
	apt-get install golang-1.8-go -y
	
	echo 'export PATH=$PATH:/usr/lib/go-1.8/bin' >> ~/.bashrc
	echo 'export GOPATH=/usr/lib/go-1.8/' >> ~/.bashrc
	echo 'export PATH=$PATH:~/bin' >> ~/.bashrc
	
	source ~/.bashrc
}

go_lang