#!bin/bash

echo "mariadb starting.."
service mariadb start
sleep 2
mysql -e "CREATE DATABASE IF NOT EXISTS wordpress"

mysql -e "SHOW DATABASES"

mysql -e "CREATE USER IF NOT EXISTS 'iantar'@'localhost' IDENTIFIED BY '1234';"

mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'iantar'@'localhost' WITH GRANT OPTION;"

sleep 2

mysql -e "SHUTDOWN;"
sleep 2

mysqld_safe
# sleep 5
