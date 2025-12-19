# Install Helm

## Distribution URL
- **Official Guide**: [https://helm.sh/docs/intro/install/](https://helm.sh/docs/intro/install/)
- **GitHub Releases**: [https://github.com/helm/helm/releases](https://github.com/helm/helm/releases)

## MacOS

### Install Latest Version
```bash
brew install helm
```

### Install Specific Version
```bash
# Download specific version tarball
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh --version v3.11.0
```

## Linux

### Install Latest Version
```bash
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
```

### Install Specific Version
```bash
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh --version v3.11.0
```

## Verification
```bash
helm version
```
