#!/bin/sh
mysql_install_db
mysqld_safe  & 
sleep 5

echo  "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE; GRANT ALL ON $MYSQL_DATABASE.* TO '$MYSQL_ROOT_USER'@'%' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';" \
     "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';" "FLUSH PRIVILEGES;" | mysql -u root -p${MYSQL_ROOT_PASSWORD}
sleep 5

mysqladmin shutdown -p${MYSQL_ROOT_PASSWORD}
sleep 5
mysqld_safe

# # docker exec -it 359 mysql -u root -p -e "SHOW DATABASES;"