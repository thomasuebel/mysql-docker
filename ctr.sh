#!/bin/bash
set -e

if [[ $# < 1 ]]; then
	echo "Manage the mysql-docker container"
    echo "./ctr.sh [build|run|remove|provision|all]"
    exit -1
fi

case $1 in
	build)
		docker build -t mysql-docker .
	;;
	run)
		docker run --name mysql-docker -e MYSQL_ROOT_PASSWORD=developer -p 3306:3306 -d mysql-docker
	;;
	remove)
		docker kill mysql-docker
		docker rm mysql-docker
	;;
	provision)
		docker exec mysql-docker ./var/scripts/run-scripts.sh
	;;
	all)
		./ctr.sh build
		./ctr.sh run
		./ctr.sh provision
	;;
	*)
		echo "Invalid parameter"
		exit -1
	;;
esac

