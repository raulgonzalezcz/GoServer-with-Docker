#!/bin/bash
echo "Building golang binary"
CGO_ENABLED=0 go build -a -installsuffix cgo -o app ../hello.go

echo "Building Docker image"
docker image build --tag $DOCKERID/$1:1.0 .

echo "Removing binary"
rm app

#From Repo: https://flaviocopes.com/golang-docker/