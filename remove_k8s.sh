#!/bin/bash

killall kubectl

kubectl delete deployments --all -n authentication-app
kubectl delete services --all -n authentication-app
kubectl delete pvc --all -n authentication-app
kubectl delete pv --all -n authentication-app
kubectl delete secrets --all -n authentication-app
kubectl delete configmaps --all -n authentication-app
kubectl delete pods --all -n authentication-app
kubectl delete namespaces authentication-app
