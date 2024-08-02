#!/bin/bash

# Deploy worker applications
kubectl apply -f deploy/worker-deployment.yaml

# Deploy worker services
kubectl apply -f deploy/worker-service.yaml

echo "Worker applications and services deployed successfully."
