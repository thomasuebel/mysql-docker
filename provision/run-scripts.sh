#!/bin/bash
# Wait for mysql to come up
while ! mysqladmin ping -h"localhost" --silent; do
    sleep 1
done

# give it another 5s to accept user connections
sleep 5s

# run all provided sql snippets
for filename in /var/scripts/*.sql; do
	mysql --user=root -pdeveloper < $filename
done
