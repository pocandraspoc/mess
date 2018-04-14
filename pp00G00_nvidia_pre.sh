#!/bin/bash
nvidia_in(){
	apt purge nvidia-* -y
	
	add-apt-repository ppa:graphics-drivers/ppa -y
	echo -ne '\n' | add-apt-repository ppa:xorg-edgers/ppa -y
	
	apt-get update
	apt-get upgrade
	
	apt install nvidia-384 -y
	dpkg -i cuda-repo-ubuntu1404_8.0.61-1_amd64.deb
	apt-get update
	apt-get install cuda -y

	echo "CUDA_HOME="/usr/local/cuda-8.0"" >> /etc/environment
	echo "LD_LIBRARY_PATH="${CUDA_HOME}/lib64"" >> /etc/environment
	echo "PATH="${CUDA_HOME}/bin:${PATH}/"" >> /etc/environment


	prime-select query
	prime-select nvidia
	
}

nvidia_in
