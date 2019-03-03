#!/bin/bash

sudo apt -y install fortune cowsay ruby

cd /tmp
wget https://github.com/busyloop/lolcat/archive/master.zip
unzip master.zip
cd lolcat-master/bin/
gem install lolcat
cd ../../
rm -rf master.zip lolcat-master

cd /tmp
git clone https://gist.github.com/scottashipp/c587dd35d253ce7c6a2bbee15abe143c
cd c587dd35d253ce7c6a2bbee15abe143c
sudo strfile softwareengineering
sudo cp soft* /usr/share/games/fortunes/.
cd ..
rm -rf c587dd35d253ce7c6a2bbee15abe143c

