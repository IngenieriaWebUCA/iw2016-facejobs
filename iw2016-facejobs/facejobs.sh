#! /bin/bash

echo "Usuario MySQL:"
read user

echo -n "Contrase�a de $user de MySQL: "
read CLAVE

echo -n "Creando base de datos..."
if mysql -u root --password="$CLAVE" < iw2016facejobs.sql; then
  echo "*** Base de datos creada con exito***"
else
  echo "*** Se ha producido un error creando la base de datos ***"
fi

echo "Desplegando la aplicaci�n... "

mvn clean compile tomcat7:run

