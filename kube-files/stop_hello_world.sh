#!/bin/bash

kubectl stop rc kube-hello-world-v1
kubectl delete svc hw-service
