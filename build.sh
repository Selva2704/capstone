#!/bin/bash

docker build -t  mynginx:v01 .

docker tag mynginx:v01 selvadev27/prod
docker tag mynginx:v01 selvadev27/dev
