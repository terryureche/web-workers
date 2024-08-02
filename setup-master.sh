#!/bin/bash

# Initialize the Kubernetes master
sudo kubeadm init --pod-network-cidr=192.168.0.0/16

# Set up the kubeconfig for the root user
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# Install a pod network add-on (Calico)
kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml

echo "Master node setup complete. You can now run the deploy-apps.sh script to deploy the master application and services."
