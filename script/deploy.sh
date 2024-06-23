#!/bin/bash
echo \$DOCKER_PASSWORD | docker login -u \$DOCKER_USERNAME --password-stdin docker.io
docker push $DOCKER_BFLASK_IMAGE
docker run -d -p 4040:80 sarathakashk95/prod:latest

