#!/bin/bash

echo "Atualizando o servidor"

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Download e cópia dos arquivos da aplicação"

cd /tmp
wget https://github.com/rodrigoll01/IaaC-Script-Apache/archive/refs/heads/main.zip
unzip main.zip
cd IaaC-Script-Apache
cp -R * /var/www/html/
