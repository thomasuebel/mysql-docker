#!/bin/bash
docker run --name mysql-docker -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 -d mysql:5.7
