# Install AWS CLI

## Distribution URL
- **Official Download**: [https://aws.amazon.com/cli/](https://aws.amazon.com/cli/)

## MacOS

### Install Latest Version
```bash
# Using GUI Installer
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg AWSCLIV2.pkg -target /

# Using Homebrew
brew install awscli
```

### Install Specific Version
Homebrew does not easily support specific versions of `awscli`. Use the official installer or `pip` (not recommended for system-wide install).

## Linux

### Install Latest Version
```bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
```

### Install Specific Version
You can download specific versions by appending the version number to the URL (if available in archives) or using a package manager if supported.
For example, to update:
```bash
sudo ./aws/install --bin-dir /usr/local/bin --install-dir /usr/local/aws-cli --update
```

## Verification
```bash
aws --version
```
