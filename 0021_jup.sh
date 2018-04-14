#!/bin/bash

jup_in(){
	pip install jupyter
	echo 'alias qjup="kill $(pgrep jupyter)"' >> ~/.bashrc
	source ~/.bashrc
}

jup_in
