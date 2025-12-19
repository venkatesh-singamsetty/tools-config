# Install Kubectl

## Distribution URL
- **Official Docs**: [https://kubernetes.io/docs/tasks/tools/](https://kubernetes.io/docs/tasks/tools/)

## MacOS

### Install Latest Version
```bash
brew install kubectl
```

### Install Specific Version
```bash
# Download binary for specific version (e.g., v1.26.0)
curl -LO "https://dl.k8s.io/release/v1.26.0/bin/darwin/amd64/kubectl"
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
```

## Linux

### Install Latest Version
```bash
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
```

### Install Specific Version
```bash
# Replace version number in URL
curl -LO "https://dl.k8s.io/release/v1.26.0/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
```

## Verification
```bash
kubectl version --client
```
