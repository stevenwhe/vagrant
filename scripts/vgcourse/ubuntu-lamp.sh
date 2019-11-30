#!/bin/bash

# Updates & Upgrade
sudo apt update && sudo apt upgrade -y

# Install Tools
sudo apt install -y screen vim git net-tools wget

# Install Apache2
sudo apt install -y apache2

sudo systemctl enable apache2
sudo systemctl start apache2

# Install Php
sudo apt install -y php libapache2-mod-php

# Install MYSQL mariadb
sudo apt install -y mariadb-server mariadb-client

sudo apt update

sudo systemctl enable mariadb
sudo systemctl start mariadb
#sudo systemctl enable mysqld
#sudo systemctl start mysqld

mysql -u root -e "SHOW DATABASES"

# Download starter content
cd /vagrant

#sudo -u vagrant wget -q https://raw.githubusercontent.com/stevenwhe/vagrant/master/files/index.html
#sudo -u vagrant wget -q https://github.com/stevenwhe/vagrant/blob/master/files/info.php

sudo systemctl restart apache2
