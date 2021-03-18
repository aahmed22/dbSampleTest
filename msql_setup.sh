# Simple setup for MySQL on Ubuntu LTS

# Proceed with upgrading newly deployed Ubuntu Server.
sudo apt update -y
sudo apt upgrade -y

wget -c https://repo.mysql.com//mysql-apt-config_0.8.13-1_all.deb 
sudo dpkg -i mysql-apt-config_0.8.13-1_all.deb

# Install mysql
sudo apt-get install mysql-server -y
sudo mysql_secure_installation

# Post installation
sudo systemctl start mysql
sudo systemctl enable mysql

wget https://sp.mysqltutorial.org/wp-content/uploads/2018/03/mysqlsampledatabase.zip

sudo apt install unzip -y
unzip mysqlsampledatabase.zip

# Login into Mysql db
sudo mysql -u root -p

# Load sample into database
source /home/ubuntu/mysqlsampledatabase.sql
