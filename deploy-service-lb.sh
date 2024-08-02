#!/bin/bash

# Define the path to the YAML file
SERVICE_YAML="deploy/master-service-loadbalancer.yaml"

# Check if the YAML file exists
if [ ! -f "$SERVICE_YAML" ]; then
  echo "Error: YAML file $SERVICE_YAML not found."
  exit 1
fi

# Apply the YAML configuration using kubectl
echo "Applying Kubernetes LoadBalancer service configuration..."
kubectl apply -f "$SERVICE_YAML"

# Check if the kubectl command was successful
if [ $? -eq 0 ]; then
  echo "LoadBalancer service applied successfully."
else
  echo "Error: Failed to apply LoadBalancer service."
  exit 1
fi

# Optionally, you can display the status of the services to verify
echo "Service status:"
kubectl get services
