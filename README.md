# Users Microservice

This is a sample microservice, built with FastAPI/Python. This service can b run in 2 ways:

1- building the image manually

2- through docker compose


## Build image and run manually

1- `docker network create --driver bridge microservice-net`

2- `docker run -d --name postgresql-server --network microservice-net -e POSTGRESQL_PASSWORD=mysupersecretpassword bitnami/postgresql`

3- `docker build -t users-microservice .`

4- `docker network connect microservice-net users-microservice`

5- `docker run -p 8000:8000 users-microservice`


## Run through Docker Compose

`docker compose up` or `docker compose up -d`