#!/bin/bash
###########################################################################
#DOwnload files from:https://drive.google.com/drive/folders/0By8Hu0NmtsbEdFJma1JfcTU3RjQ?usp=sharing

#Install manually:
#01_libcudnn6_6.0.21-1+cuda8.0_amd64.deb
#02_libcudnn6-dev_6.0.21-1+cuda8.0_amd64.deb
#03_libcudnn6-doc_6.0.21-1+cuda8.0_amd64.deb

#For Tensorflow to find everything, I had to copy include/cudnn.h and the libraries in lib64/ to /usr/local/cuda-8.0/include and /usr/local/cuda-8.0/lib64 (using CUDA 8.0, Ubuntu 14.04, Tensorflow 0.12.0rc0) - maybe this is helpful for somebody.
###########################################################################

#sudo dpkg -i 01_libcudnn6_6.0.21-1+cuda8.0_amd64.deb
#sudo dpkg -i 02_libcudnn6-dev_6.0.21-1+cuda8.0_amd64.deb
#sudo dpkg -i 03_libcudnn6-doc_6.0.21-1+cuda8.0_amd64.deb	

#sudo cp -R /lib64/ld-linux-x86-64.so.2 /usr/local/cuda-8.0/lib64/
#sudo cp -R /usr/include/cudnn.h /usr/local/cuda-8.0/include/

#echo 'export CUDA_HOME=/usr/local/cuda-8.0' >> ~/.bashrc
#echo 'export CUDA_ROOT=/usr/local/cuda-8.0' >> ~/.bashrc
#echo 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CUDA_ROOT/lib64' >> ~/.bashrc
#source ~/.bashrc

#sudo apt-get install python-pip python-dev
#sudo pip install tensorflow-gpu


#	sudo add-apt-repository ppa:gophers/archive -y
#	sudo apt update
#	sudo apt-get install golang-1.8-go -y
#	
#	sudo echo 'export PATH=$PATH:/usr/lib/go-1.8/bin' >> ~/.bashrc
#	sudo echo 'export PATH=$PATH:~/bin' >> ~/.bashrc
#	
#	sudo source ~/.bashrc

#	git clone https://github.com/github/hub.git
#	sudo hub/script/build -o ~/bin/hub
#	sudo alias git=hub
