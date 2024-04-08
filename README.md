# Some steps

## 1. Adding self-hosted runner:
```bash
mkdir actions-runner && cd actions-runner
curl -o actions-runner-linux-x64-2.314.1.tar.gz -L https://github.com/actions/runner/releases/download/v2.314.1/actions-runner-linux-x64-2.314.1.tar.gz
echo "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX  actions-runner-linux-x64-2.314.1.tar.gz" | shasum -a 256 -c
tar xzf ./actions-runner-linux-x64-2.314.1.tar.gz
RUNNER_ALLOW_RUNASROOT="1" ./config.sh --url https://github.com/ussnorma/DevOps-Project --token XXXXXXXXXXXXXXXXXXXXXX
RUNNER_ALLOW_RUNASROOT="1" ./run.sh
```
## 2. Install on runner
- kubectl
- helm
- docker
- pip3
- shyam
## 3. Create Slack Notification for ArgoCD:
[slack-argocd](https://argocd-notifications.readthedocs.io/en/stable/services/slack/)