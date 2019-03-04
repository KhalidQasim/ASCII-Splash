#!/bin/bash

# Adding ~/.ascii_splash
echo "Adding splash.py..."
mkdir ~/.ascii_splash
cp splash.py ~/.ascii_splash/.

# Install dependencies using package manager according to OS distro
if VERB="$( which apt-get )" 2> /dev/null; then
	echo "Installing fortune, cowsay, ruby, and python3 for Debian-based OS..."
	sudo apt-get -y install fortune cowsay ruby python3
elif VERB="$( which yum )" 2> /dev/null; then
	echo "Installing fortune, cowsay, ruby, and python3 for Red Hat-based OS..."
	sudo yum -y install fortune cowsay ruby python3
#elif VERB="$( which portage )" 2> /dev/null; then
#	echo "Installing ASCII Splash for Gentoo-based OS..."
#
#elif VERB="$( which pacman )" 2> /dev/null; then
#	echo "Installing ASCII Splash for Arch-based OS..."
#
else
	echo "I have no idea what OS I'm running on. How about opening an issue on github?" >&2
	exit 1
fi

# Install lolcat if not already installed
if VERB="$( which lolcat )" 2> /dev/null; then
	echo "lolcat is already installed..."
else
	echo "Installing lolcat..."
	cd /tmp
	wget https://github.com/busyloop/lolcat/archive/master.zip
	unzip master.zip
	cd lolcat-master/bin/
	sudo gem install lolcat
	cd ../../
	rm -rf master.zip lolcat-master
fi

# Install software engineering fortunes if not already installed
if [ -f /usr/share/games/fortunes/softwareengineering ]; then
	echo "Software engineering fortunes are already installed..."
else
	echo "Installing software engineering fortunes..."
    cd /tmp
	git clone https://gist.github.com/d59898127fb768c36e6127062adef3f2.git
	cd d59898127fb768c36e6127062adef3f2
	sudo strfile softwareengineering
	sudo cp software* /usr/share/games/fortunes/.
	cd ..
	rm -rf d59898127fb768c36e6127062adef3f2
fi

# Modifying bash profile
echo "Adding to bashrc..."
echo "
# ASCII Splash
python3 ~/.ascii_splash/splash.py" >> ~/.bashrc
echo "Installation completed..."

exit
#EOF