#!/bin/bash
docker container run --detach --publish 80:8080 --name $1 $DOCKERID/$1:1.0