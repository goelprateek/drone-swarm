#!/bin/sh

# prepare a Volume for the Drone server's db
docker volume create drone-server-data

# perform the deploy
docker stack deploy -c docker-stack.yml drone-ci
