#!/bin/bash

kubectl create -f redis-master-controller.json
kubectl create -f redis-master-service.json


kubectl create -f redis-slave-controller.json
kubectl create -f redis-slave-service.json

kubectl create -f frontend-controller.yml
kubectl create -f frontend-service.yml

