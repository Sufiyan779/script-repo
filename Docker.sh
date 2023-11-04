#!/bin/bash
sudo apt-get update 
sudo apt-get install docker.io -y 
sudo usermod -aG docker $USER
sudo chmod 777 /var/run/docker.sock

git clone https://github.com/hashicorp/learn-terraform-provision-eks-cluster
cd learn-terraform-provision-eks-cluster
curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.27.6/2023-10-17/bin/linux/amd64/kubectl
sudo chmod +x ./kubectl
sudo mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl && export PATH=$HOME/bin:$PATH


#aws-cli
sudo apt install unzip -y
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
