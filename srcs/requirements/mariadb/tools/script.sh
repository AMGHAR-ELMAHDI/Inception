#!/bin/sh
mysql_install_db
service mariadb start

mysql -u root -e "DROP DATABASE IF EXISTS wordpress;"
mysql -u root -e "CREATE DATABASE IF NOT EXISTS wordpress; GRANT ALL ON wordpress.* TO 'eamghar'@'%' IDENTIFIED BY '1337';"
# mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';"
mysql -u root -e "FLUSH PRIVILEGES;"

# mysqladmin shutdown -p${MYSQL_ROOT_PASSWORD}
mysqladmin shutdown 
