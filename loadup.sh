#!/bin/bash

sudo apt update -y && sudo apt upgrade -y
sudo apt install python3-pip -y

sudo apt-get install mysql-server -y
sudo systemctl start mysql
sudo systemctl enable mysql

# Acquiring and unzipping files
sudo apt install unzip -y

wget https://sp.mysqltutorial.org/wp-content/uploads/2018/03/mysqlsampledatabase.zip
unzip mysqlsampledatabase.zip

wget https://sp.mysqltutorial.org/wp-content/uploads/2018/03/python_mysql.zip
unzip python_mysql.zip

pip3 install mysql-connector-python
