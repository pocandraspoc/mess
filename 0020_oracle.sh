#!/bin/bash

virtual_in(){
	
	# first make sure to remove your current virtualbox
	# next, add the repository to your sources
	# add public keys to verify downloads
	# now update to complete the process of adding the repository
	# install dkms if you haven't already
	# install virtualbox; change version number as needed
	
	apt purge virtualbox -y
	add-apt-repository "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib"
	wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | apt-key add -
	apt-get update
	apt-get install dkms
	apt-get install virtualbox-5.0 -y

}

vagrant_in(){
	wget https://releases.hashicorp.com/vagrant/1.9.1/vagrant_1.9.1_x86_64.deb
	dpkg -i vagrant_1.9.1_x86_64.deb 
	rm vagrant_1.9.1_x86_64.deb 

}



guest_in(){
	wget http://download.virtualbox.org/virtualbox/5.0.40/VBoxGuestAdditions_5.0.40.iso
	
	mkdir /media/VBoxGuestAdditions
	mount -o loop,ro VBoxGuestAdditions_5.0.40.iso /media/VBoxGuestAdditions
	
	sh /media/VBoxGuestAdditions/VBoxLinuxAdditions.run
	rm VBoxGuestAdditions_5.0.40.iso
	umount /media/VBoxGuestAdditions
	rmdir /media/VBoxGuestAdditions
}


virtual_in
vagrant_in
#guest_in

#GUEST add

