#!/bin/bash

clear
echo Updating System
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrades -y

echo Installing Webmin Pre-reqs

sudo apt-get install perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl apt-show-versions python

echo Downloading & Installing Webmin

wget http://prdownloads.sourceforge.net/webadmin/webmin_1.941_all.deb
sudo dpkg --install webmin_1.941_all.deb

echo Opening Webmin ports in UFW

sudo ufw allow 10000
sudo ufw status

echo Configuration complete, restarting

