#!/bin/sh
#########################################################################
# File Name: debug.sh
# Author: shootsoft
# Email:  shootsoft#qq.com
# Version:
# Created Time: 2017/03/11
#########################################################################

# This is used for testing this docker
docker rm -f docker-php7
docker rmi docker-php7
docker build -t docker-php7 .
docker run --name docker-php7 -p 80:80 -d docker-php7
docker exec -it docker-php7 bash