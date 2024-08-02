#!/bin/bash

# Generate the join command for worker nodes
kubeadm token create --print-join-command > join-command.sh

# Make the join-command.sh script executable
chmod +x join-command.sh

echo "Join command generated. Use join-command.sh to join worker nodes to the cluster."
