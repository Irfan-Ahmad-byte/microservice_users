#!/bin/bash


# stop the container and remove the network

docker network disconnect microservice-net users-microservice
docker network disconnect microservice-net postgresql-server
docker network rm microservice-net
docker stop postgresql-server
docker rm postgresql-server
docker stop users-microservice
docker rm users-microservice