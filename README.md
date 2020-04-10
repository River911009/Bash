# DebianEnviromentSetup



    /**
     * Command line:
     */

    1. Add terminal shortcut:
    	Super+A > Settings > Keyboard > Custom Shortcuts > add new (gnu-x-terminal)

    2. Install sudo command:
    	$su
    	#apt-get install sudo
    	#usermod -aG sudo {$userName}
    	#reboot

    3. Update and upgrade:
    	$sudo apt-get update
    	$sudo apt-get upgrade

    4. Install Chewing input method:
    	$sudo apt-get install -y ibus-chewing
    	$sudo ibus restart

    5. Bluetooth deriver:
    	$sudo apt edit-source
    		add " contrib non-free" to each "deb" and "deb-src" line
    	$sudo apt-get update
    	$sudo apt-get install firmware-atheros
    	$sudo modprobe -v ath3k

    6. Install node.js, npm and mongodb server:
    	$sudo apt-get install -y mongodb
    	$sudo apt-get install -y curl
    	$sudo curl -sL http://deb.nodesource.com/setup_6.x | sudo bash -
    	$sudo apt-get install -y nodejs

    	$cd ~/{$ProjectDirector}
    	$npm init
    	$npm install mongodb --save

    7. Wine:
    	$sudo dpkg --add-architecture i386
    	$sudo wget -qO - https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -
    	$sudo apt-add-repository https://dl.winehq.org/wine-builds/debian
    	$sudo apt update
    	$sudo apt install winehq-stable


    /**
     * deb installation:
     */

    1. Google Chrome:
    	$sudo dpkg --install ./google-chrome-stable_current_amd64.deb


    /**
     * tar, tgz installation:
     */

    1. Arduino IDE:
    2. Processing:
    	Extract it.
    	$sudo mv ./{$DirectorName} /opt/{$DirectorName}
    	$/opt/{$DirectorName}/install.sh
    3. pyserial:
    	Extract it.
    	$sudo python setup.py install


    /**
     * Enviroment setting:
     */

    1. Serial port:
    	$sudo usermod -aG dialout {$UserName}

    2. libusb-dev:
      $sudo apt-get install libusb-dev
