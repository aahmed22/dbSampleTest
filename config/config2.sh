#!/bin/bash

sudo apt update -y && sudo apt upgrade -y
sudo apt install python3-pip -y

sudo apt-get install mysql-server -y
sudo systemctl start mysql
sudo systemctl enable mysql

# Installing unzip package
sudo apt install unzip -y

# Pulling sample database
wget https://sp.mysqltutorial.org/wp-content/uploads/2018/03/mysqlsampledatabase.zip
unzip mysqlsampledatabase.zip

# Install python mysql connector
pip3 install mysql-connector-python

alias python=python3 
