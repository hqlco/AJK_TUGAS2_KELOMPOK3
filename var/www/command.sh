#!/bin/bash

#Update
sudo apt-get update -y

#Install dependencies and add PHP8.0 repository
sudo apt-get install  ca-certificates apt-transport-https software-properties-common -y
sudo add-apt-repository ppa:ondrej/php -y


# You should install PHP8.0 version to run the Laravel Project
sudo apt-get update -y
sudo apt-get install php8.0-common php8.0-cli -y

# install PHP package
sudo apt-get install php8.0-mbstring php8.0-xml unzip composer -y
sudo apt-get install php8.0-curl php8.0-mysql php8.0-fpm -y

# install MYSQL
sudo apt-get install mysql-server -y

# Set MYSQL password
sudo apt-get install debconf-utils -y
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password root"