#!/bin/sh

mkdir -p /var/run/vsftpd/empty

mkdir -p /var/www/wordpress

# create a new user without password and set all the user informations to empty string
# to avoid promping when running (general electric comprehensive operating system)
adduser iantar --disabled-password -gecos ""
echo "iantar:1234" | chpasswd
chown -R iantar:iantar /var/www/wordpress

echo iantar >> /etc/vsftpd.user_list


# sleep 5

echo "FTP starting..."
vsftpd /etc/vsftpd.conf