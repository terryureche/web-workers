#!/bin/bash

# Deploy master and worker applications
kubectl apply -f deploy/master-deployment.yaml

# Deploy services
kubectl apply -f service/master-service.yaml

echo "Master application and services deployed successfully."
