#!/bin/bash
#Code for delete containers, images and volumes in one command.
#Easy but useful! :)

docker rm $(docker ps -a -q) --force
docker rmi $(docker images -q)
docker volume rm $(docker volume ls -q)
