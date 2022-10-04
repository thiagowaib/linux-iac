#!/bin/bash

echo ""
echo "Atualizando o sistema..."
apt update
apt upgrade -y

echo ""
echo "Instalando pacotes..."
apt install  apache2 -y
apt install unzip -y

echo ""
echo "Baixando aplicacao..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo ""
echo "Extraindo arquivos..."
unzip main.zip

echo ""
echo "Copiando arquivos..."
cd linux-site-dio-main
cp -R * /var/www/html

echo ""
echo "Finalizado."
echo ""
