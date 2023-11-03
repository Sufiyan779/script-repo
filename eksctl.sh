#!/bin/bash

# Install kubectl
# echo "Installing kubectl..."
# curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/Ubuntu/amd64/kubectl"
# chmod +x kubectl
# sudo mv kubectl /usr/local/bin/
curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.27.6/2023-10-17/bin/linux/amd64/kubectl
chmod +x ./kubectl
mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl && export PATH=$HOME/bin:$PATH


#aws-cli
sudo apt install unzip -y
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install



# Install eksctl
# echo "Installing eksctl..."
# curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_Ubuntu_amd64" > eksctl && chmod +x eksctl && sudo mv eksctl /usr/local/bin/

# echo "Installation complete."

# Verify installations
kubectl version --client
aws --version
aws s3 ls
