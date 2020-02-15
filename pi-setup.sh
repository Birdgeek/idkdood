#!/bin/bash/

echo "Updating System"
apt-get update
apt-get upgrade
apt-get dist-upgrades

echo "Installing Webmin Pre-reqs"

apt-get install perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl apt-show-versions python

echo "Downloading & Installing Webmin"

wget http://prdownloads.sourceforge.net/webadmin/webmin_1.941_all.deb

dpkg --install webmin_1.941_all.deb

echo "Opening Webmin ports in UFW"

ufw allow 10000
ufw status

echo "Configuration complete, restarting"

