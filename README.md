# Project sa-it.academy DevOps

## 1. Adding self-hosted runner:
```bash
mkdir actions-runner && cd actions-runner
curl -o actions-runner-linux-x64-2.314.1.tar.gz -L https://github.com/actions/runner/releases/download/v2.314.1/actions-runner-linux-x64-2.314.1.tar.gz
echo "6c726a118bbe02cd32e222f890e1e476567bf299353a96886ba75b423c1137b5  actions-runner-linux-x64-2.314.1.tar.gz" | shasum -a 256 -c
tar xzf ./actions-runner-linux-x64-2.314.1.tar.gz
RUNNER_ALLOW_RUNASROOT="1" ./config.sh --url https://github.com/ussnorma/DevOps-Project --token XXXXXXXXXXXXXXXXXXXXXX
RUNNER_ALLOW_RUNASROOT="1" ./run.sh
```

## 2. 

```bash
kubectl create ns nfs-provisioner
kubectl create ns pre-prod
kubectl apply -f pvc-wordpress.yaml
cd ./wordpress-helm
helm dependency build
cd ..
helm lint wordpress-helm
helm package wordpress-helm
```
## 3. install 
helm
docker
pip3
shyaml