#!/bin/bash
docker-compose up -d
CONTAINER_NAME='guviproj'
x=$(docker ps -q -f status=running -f name=$CONTAINER_NAME)
if [[ -n "$x" ]]; then
  echo 'Container exists'
  docker push selvadev27/prod
  docker push selvadev27/dev
else
  echo 'No container image'
fi
