#!/bin/bash

# Install kubectl
echo "Installing kubectl..."
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/Ubuntu/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/

# Install eksctl
echo "Installing eksctl..."
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_Ubuntu_amd64" > eksctl && chmod +x eksctl && sudo mv eksctl /usr/local/bin/

echo "Installation complete."

# Verify installations
kubectl version --client
eksctl version
