#!bin/bash

# echo "mariadb starting.."

service mariadb start
sleep 2
mysql -e "CREATE DATABASE IF NOT EXISTS $DB_NAME"

# mysql -e "SHOW DATABASES"

mysql -e "CREATE USER IF NOT EXISTS '$USER'@'%' IDENTIFIED BY '$DB_PASSWORD'"

mysql -e "GRANT ALL PRIVILEGES ON *.* TO '$USER'@'%' WITH GRANT OPTION"

mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$ADMIN_PASSWORD'"

mysql -u root -p$ADMIN_PASSWORD -e "RENAME USER 'root'@'localhost' to '$ADMIN'@'localhost'"

# mysql -u  5-e "FLUSH PRIVELIGEIES"


# sleep 2

mysql -u $ADMIN -p$ADMIN_PASSWORD  -e "SHUTDOWN;"

#error: mysqld_safe A mysqld process already exists
sleep 2

mysqld_safe
# sleep 5
