#!/bin/bash

kubectl stop rc postgres-controller podman-controller
kubectl delete svc postgres-service podman-web
