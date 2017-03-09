#!/bin/bash
docker run --name mysql-docker -e MYSQL_ROOT_PASSWORD=developer -p 3306:3306 -d mysql-docker
