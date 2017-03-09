# mysql-docker

## Very simple mysql docker image

Create a dockerized MySQL server ready to connect with some basic database grants set up. 
A few convenience scripts are provided to build the image and run/kill the container.

### Build

Use the supplied ./imgbuild.sh

### Kill

Use the supplied ./imgkill.sh

### Run

Use the supplied ./imgrun.sh

After the docker container is up, give it a moment to initalize the database, 
then run ./provision.sh to create the baseschema. 
If it completes with just a warning everything went alright.