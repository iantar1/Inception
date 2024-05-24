#!/bin/bash
echo "iantar.42.fr" > /etc/hostname
echo "127.0.0.1       iantar.42.fr" >> /etc/hosts
bash
systemctl restart nginx