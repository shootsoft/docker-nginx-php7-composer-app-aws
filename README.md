# docker-nginx-php7-composer-app-aws
A docker image with nginx, php7, composer, deployed to AWS Elastic Beanstalk.

- Based on [skiychan/nginx-php7:latest](http://hub.docker.com/r/skiychan/nginx-php7/)
- Reinstall xdebug and disabled mongodb extension
- Add composer initialisation for PHP application
- Simple PHP application with log

# Usage

Put your PHP application in src folder.

## Local

./docker/debug.sh

This will build docker + launch a default container. But the initialisation will take 1~2 minutes.

## AWS Elastic Beanstalk

- Zip entire folder, make sure `Dockerfile` and `Dockerrun.aws.json` is in root folder of zip file.
- Upload zip file or create a new single docker container Elastic Beanstalk application with this zip.

# TODO
Work AWS Elastic BeanStalk