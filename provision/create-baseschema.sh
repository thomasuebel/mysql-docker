#!/bin/bash
mysql --user=root --password=developer --execute \
 "CREATE SCHEMA IF NOT EXISTS baseschema CHARACTER SET utf8; \
  GRANT ALL PRIVILEGES ON baseschema.* TO 'baseschema'@'localhost' IDENTIFIED BY 'baseschema'; \
  GRANT ALL PRIVILEGES ON baseschema.* TO 'baseschema'@'%' IDENTIFIED BY 'baseschema';"