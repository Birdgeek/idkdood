#!/bin/bash
clear

echo -e "\n\nChecking for PiHole Updates\n\n"

pihole -up

echo -e "\n\nReinstalling Dark-Theme after-update\n\n"

cd /var/www/html/admin/style/vendor/
sudo git clone https://github.com/thomasbnt/Night_Pihole.git
cd Night_Pihole
sudo chmod +x install.sh
sudo ./install.sh

cd ~

echo -e "\n\nPiHole Update Check Completed\n\n"