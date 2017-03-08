FROM mysql:5.7
LABEL version "0.1"
LABEL description "Dockerized development MySQL server"
LABEL maintainer "@thomasuebel"

#
# see https://hub.docker.com/_/mysql/ for more information
#

EXPOSE 3306

RUN mkdir -p /var/scripts
COPY provision* /var/scripts
