#!/bin/bash

# Removing ~/.ascii_splash
echo "Removing from home directory..."
rm -rf ~/.ascii_splash

# Removing dependencies using package manager according to OS distro
if VERB="$( which apt-get )" 2> /dev/null; then
	echo
	echo "This script does not remove OS packages..."
	echo "To completely remove the corresponding OS packages, run the following command:"
	echo "    sudo apt-get -y remove fortune cowsay ruby python3"

elif VERB="$( which yum )" 2> /dev/null; then
	echo
	echo "This script does not remove OS packages..."
	echo "To completely remove the corresponding OS packages, run the following command:"
	echo "    sudo yum -y remove fortune cowsay ruby python3"

#elif VERB="$( which portage )" 2> /dev/null; then
#	echo "Removing ASCII Splash for Gentoo-based OS..."
#
#elif VERB="$( which pacman )" 2> /dev/null; then
#	echo "Removing ASCII Splash for Arch-based OS..."
#
else
	echo
	echo "I have no idea what OS I'm running on."
	echo "How about opening an issue on github mentioning your OS distro name and version?"
	exit 1
fi

# Removing lolcat if not already installed
if VERB="$( which lolcat )" 2> /dev/null; then
	echo
	echo "This script does not remove OS packages..."
	echo "To completely remove lolcat, run the following command:"
	echo "    echo \"y\" | sudo gem uninstall lolcat"	
else
	echo "lolcat is not installed..."
fi

# Removing software engineering fortunes if not already installed
if [ -f /usr/share/games/fortunes/softwareengineering ]; then
	echo "Removing software engineering fortunes..."
	sudo rm /usr/share/games/fortunes/software*

else
	echo "Software engineering fortunes are not installed..."
fi

# Modifying bashrc
echo "Removing from bashrc..."
sed -i '/\# ASCII Splash/d' ~/.bashrc
sed -i '/python3 ~\/.ascii_splash\/splash.py/d' ~/.bashrc

echo "Uninstallation completed..."
exit
#EOF