#!/bin/sh
sudo chmod 777 ./inicio.sh
echo Iniciando configuración de la aplicación web.
read -p "Nombre de usuario con permisos de administrador de la base de datos:" usuario
mysql -u $usuario -p < iw2016facejobs.sql
echo Configuración realizada correctamente.
