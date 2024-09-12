#!/bin/bash

docker build -t authentication-app:latest ./users

minikube image load authentication-app:latest

kubectl apply -f k8s_setup/namespace.yml

kubectl apply -f k8s_setup/postgresql-authentication-deployment.yml
kubectl apply -f k8s_setup/postgresql-authentication-service.yml
kubectl apply -f k8s_setup/postgres-authentication-pvc.yml

kubectl apply -f k8s_setup/authentication-app-deployment.yml
kubectl apply -f k8s_setup/authentication-app-service.yml
