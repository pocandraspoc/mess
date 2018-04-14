#!/bin/bash

wget -O /tmp/intellij.tar.gz https://download.jetbrains.com/idea/ideaIC-2017.2.5.tar.gz &&
tar xfz /tmp/intellij.tar.gz &&
cd idea-IC-172.4343.14/bin/ &&
./idea.sh
