# Install Go (Golang)

## Distribution URL
- **Official Downloads**: [https://go.dev/dl/](https://go.dev/dl/)

## MacOS

### Install Latest Version
```bash
brew install go
```

### Install Specific Version
```bash
# Example: Install Go 1.20
brew install go@1.20

# Link it if needed
brew link --force go@1.20
```

## Linux

### Install Latest Version
```bash
# Remove existing installation
sudo rm -rf /usr/local/go

# Download and extract (replace version with latest)
wget https://go.dev/dl/go1.21.0.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz

# Add to PATH (in ~/.bashrc or ~/.zshrc)
export PATH=$PATH:/usr/local/go/bin
```

### Install Specific Version
Change the version number in the download URL above (e.g., `go1.19.linux-amd64.tar.gz`).

## Verification
```bash
go version
```
