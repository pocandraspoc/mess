#!/bin/bash
git_in(){
	apt-get update
	apt-get install git -y
}
git_conf(){
	git config --global user.name "pocandraspoc"
	git config --global user.email "pocandraspoc@gmail.com"
}

git_dir(){
	mkdir -p ~/git/testing
 	cd ~/git/testing
}

git_hub(){
	git clone https://github.com/github/hub.git
	hub/script/build -o ~/bin/hub
	alias git=hub
}

git_t(){

	git_in
	git_conf
	git_dir
	
	git_hub
}

git_t



