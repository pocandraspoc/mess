#!/bin/bash
pre_r_in(){
	sh -c 'echo "deb http://cran.rstudio.com/bin/linux/ubuntu trusty/" >> /etc/apt/sources.list'
	gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
	gpg -a --export E084DAB9 | apt-key add -
	apt-get update
}


r_in(){
	apt-get -y install libcurl4-gnutls-dev libxml2-dev libssl-dev
	apt-get -y install r-base r-base-dev r-cran-rjava r-cran-xml
}

rstud_in(){
	apt-get install -y gdebi-core
	wget https://download1.rstudio.org/rstudio-1.0.143-amd64.deb
	gdebi -n rstudio-1.0.143-amd64.deb
	rm rstudio-1.0.143-amd64.deb
}

r_r(){
	pre_r_in
	r_in
	rstud_in
}

r_r
