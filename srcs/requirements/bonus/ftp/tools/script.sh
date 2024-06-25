#!/bin/sh

mkdir -p /var/run/vsftpd/empty

mkdir -p /var/www/wordpress

useradd -m $USER

echo "$USER:$USER_PASS" | chpasswd

chown $USER /var/www/wordpress

echo $USER >> /etc/vsftpd.user_list

echo "FTP starting..."

vsftpd /etc/vsftpd.conf