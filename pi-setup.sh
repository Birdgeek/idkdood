#!/bin/bash/
clear
echo -e "\n\nUpdating System\n\n"

apt-get update
apt-get upgrade
apt-get dist-upgrades

echo "\n\nInstalling Webmin Pre-reqs\n\n"

apt-get install perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl apt-show-versions python

echo "\n\nDownloading & Installing Webmin\n\n"

wget http://prdownloads.sourceforge.net/webadmin/webmin_1.941_all.deb

dpkg --install webmin_1.941_all.deb

echo "\n\nOpening Webmin ports in UFW\n\n"

ufw allow 10000
ufw status

echo "\n\nConfiguration complete, restarting\n\n"

