#!/bin/bash

# Initialize the Kubernetes master
sudo kubeadm init --pod-network-cidr=192.168.0.0/16

# Set up the kubeconfig for the root user
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# Install a pod network add-on (Calico)
kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml

# Get the join command for worker nodes
kubeadm token create --print-join-command > join-command.sh

# Make the join-command.sh script executable
chmod +x join-command.sh

echo "Master node setup complete. Run the join-command.sh script on worker nodes to join the cluster."
