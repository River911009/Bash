#########################
# installation of Node.js
#########################
apt install curl
curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -
apt install build-essential nodejs

#########################
# installation of Virtualbox
#########################
apt-get update
# add Virtualbox PPA
sudo add-apt-repository "deb http://download.virtualbox.org/virtualbox/debian stretch contrib"
# import sign key
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
# install
sudo apt-get update
sudo apt-get install virtualbox-6.0
