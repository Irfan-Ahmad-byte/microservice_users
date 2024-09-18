#!/bin/bash

killall kubectl

kubectl delete deployments --all -n orchestrator
kubectl delete services --all -n orchestrator
kubectl delete pvc --all -n orchestrator
kubectl delete pv --all -n orchestrator
kubectl delete secrets --all -n orchestrator
kubectl delete configmaps --all -n orchestrator
kubectl delete pods --all -n orchestrator
kubectl delete namespaces orchestrator
