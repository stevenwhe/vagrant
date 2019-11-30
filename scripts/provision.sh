#!/bin/bash

# Run updates && upgrades and install utilities on ubuntu
sudo apt update && apt upgrade -y
sudo apt install -y dstat
sudo apt install -y htop
sudo apt install -y screen
sudo apt install -y lsb-core
sudo apt install -y arp-scan
sudo apt install -y apache2
sudo apt install -y php
sudo apt install -y libapache2-mod-php
sudo apt install -y mysql-server


