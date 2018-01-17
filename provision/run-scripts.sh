#!/bin/bash
# Wait for mysql to come up
while ! mysqladmin ping -h"localhost" --silent; do
    sleep 1
done

# give it another 5s to accept user connections
sleep 5s

# create an empty baseschema
mysql --user=root -pdeveloper --execute \
 "CREATE SCHEMA IF NOT EXISTS baseschema CHARACTER SET utf8; \
  GRANT ALL PRIVILEGES ON baseschema.* TO 'baseschema'@'localhost' IDENTIFIED BY 'baseschema'; \
  GRANT ALL PRIVILEGES ON baseschema.* TO 'baseschema'@'%' IDENTIFIED BY 'baseschema';"

# run all provided sql snippets
for filename in /var/scripts/*.sql; do
	mysql --user=root -pdeveloper < $filename
done
