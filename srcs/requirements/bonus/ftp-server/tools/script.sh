#!/bin/sh

mkdir -p /var/run/vsftpd/empty

mkdir -p /var/www/wordpress

useradd -m iantar

echo "iantar:1234" | chpasswd

chown iantar /var/www/wordpress

echo iantar >> /etc/vsftpd.user_list

echo "FTP starting..."

vsftpd /etc/vsftpd.conf