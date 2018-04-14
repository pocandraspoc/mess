#!/bin/bash


apt-get --yes --force-yes install libio-socket-ssl-perl
apt-get --yes --force-yes install libnet-ssleay-perl
apt-get --yes --force-yes install sendemail

sendemail -f start.andras@gmail.com -t start.andras@gmail.com -u HOME -m "Olellek3" -s smtp.gmail.com:587 -o tls=yes -xu start.andras@gmail.com -xp rAq0d0tromb

#sudo apt-get purge install libio-socket-ssl-perl libnet-ssleay-perl sendemail
