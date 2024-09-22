#!/bin/bash

docker build -t $DOCKERHUB_REPO:tag .
docker push $DOCKERHUB_REPO:tag

sleep 1m

# check if minikube is running or not, if not then start minikube
minikube status | grep -q 'Running' || minikube start

# minikube image build -t authentication-app-api:new .

kubectl config use-context minikube

kubectl apply -f k8s_setup/namespace.yml

kubectl apply -f k8s_setup/authentication-secrets.yml

kubectl apply -f k8s_setup/postgres-authentication-pvc.yml
kubectl apply -f k8s_setup/postgresql-authentication-deployment.yml
kubectl apply -f k8s_setup/postgresql-authentication-service.yml

kubectl apply -f k8s_setup/authentication-app-deployment.yml
kubectl apply -f k8s_setup/authentication-app-service.yml

kobuectl apply -f k8s_setup/load_balancer.yml

# sleep for 1 minute to let the pods start
sleep 1m

# kubectl port-forward service/authentication-app-service 8080:8080 -n authentication-app &