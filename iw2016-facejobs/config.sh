#!/bin/sh
sudo chmod 777 ./inicio.sh
echo Iniciando configuraci�n de la aplicaci�n web.
read -p "Nombre de usuario con permisos de administrador de la base de datos:" usuario
mysql -u $usuario -p < iw2016facejobs.sql
echo Configuraci�n realizada correctamente.
