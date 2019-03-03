# ASCII Splash
Automatically presents ASCII art animals to greet you with a fortune quote whenever opening the terminal. And yeah, it changes "Randomly".

## Installation of dependencies
Ubuntu/Debian: 
`sudo apt -y install fortune cowsay ruby`
`wget https://github.com/busyloop/lolcat/archive/master.zip`
`unzip master.zip`
`cd lolcat-master/bin/`
`gem install lolcat`
`cd ../../`
`rm -rf master.zip lolcat-master`

CentOS/RedHat:
`sudo yum -y install fortune cowsay ruby`
`wget https://github.com/busyloop/lolcat/archive/master.zip`
`unzip master.zip`
`cd lolcat-master/bin/`
`gem install lolcat`
`cd ../../`
`rm -rf master.zip lolcat-master`

## How to get ASCII Splash working
 1. Install the required dependencies.
 2. Download the `splash.py` file and install it in your home directory.
 3. Open the Terminal.
 4. Type `cd ~` to make sure you're at the home directory.
 5. Edit the `.bash_profile` (vim, nano, or any other text editor).
 6. Add the following line to the end of the file: `python3 ascii.py`.
 7. Save the changes and exit the text editor.
 8. Close (or restart) the Terminal.
 9. Enjoy watching a different animals quoting different fortune quotes each time you open the terminal.


Created by Khalid Qasim 2018.
