#!/bin/bash

kubectl create -f postgres-rc.yml
kubectl create -f postgres-svc.yml
kubectl create -f django-web-rc.yml
kubectl create -f django-web-svc.yml
