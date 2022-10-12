#!/bin/bash
echo "Updating server"
apt update
apt dist-upgrade -y
apt clean
apt autoremove
echo "Installing apache"
apt install apache2 unzip -y
cd $HOME/Downloads
echo "Download application"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
rm -f main.zip
cd linux-site-dio-main/
cp -R * /var/www/html/
