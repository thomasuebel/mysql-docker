# mysql-docker

## Very simple mysql docker image

Create a dockerized MySQL server ready to connect with some basic database grants set up. 
A few convenience scripts are provided to build the image and run/kill the container.

This docker container is an alternative to my mysql-vagrant project for the sake of speed.
Setting up a docker container ist just so much more speedy. 

Use the supplied ctr.sh script to build/run/provision the container

After the docker container is up, give it a moment to initalize the database, then run ./provision.sh to create the baseschema. If it completes with just a warning everything went alright.