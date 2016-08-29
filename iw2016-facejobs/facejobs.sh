#! /bin/bash

echo "Usuario MySQL:"
read user

echo -n "Contraseña de $user de MySQL: "
read CLAVE

echo -n "Creando base de datos..."
if mysql -u root --password="$CLAVE" < iw2016facejobs.sql; then
  echo "*** Base de datos creada con exito***"
else
  echo "*** Se ha producido un error creando la base de datos ***"
fi

echo "Desplegando la aplicación... "

mvn clean compile tomcat7:run

