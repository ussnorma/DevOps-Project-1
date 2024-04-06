#!/bin/bash

# Install helm
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod +x get_helm.sh
./get_helm.sh
rm get_helm.sh

# Install pip3
apt install python3-pip

# Install shyaml
pip3 install shyaml
