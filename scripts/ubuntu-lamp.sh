#!/bin/bash

sudo apt update && sudo apt upgrade -y && sudo apt autoremove && sudo apt autoclean -y

# utilities installation
sudo apt install -y screen git htop dstat screen screenfetch nmap

# Installing Apache
sudo apt install -y apache2
sudo systemctl stop apache2

# Config Apache2 index & create a sysmlink to vagrant
rm -rf /var/www/html
ln -s /vagrant /var/www/html
sudo systemctl start apache2

# Installing PHP
sudo apt install -y php libapache2-mod-php

# Installing MYSQL
sudo apt install -y mysql-server
sudo systemctl start mysql

sudo mysql -u root -e "SHOW DATABASES";

# Download Start Content
sudo systemctl restart apache2



