# Install Terraform

## Distribution URL
- **Official Downloads**: [https://developer.hashicorp.com/terraform/downloads](https://developer.hashicorp.com/terraform/downloads)

## MacOS

### Install Latest Version
```bash
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
```

### Install Specific Version (Recommended: tfenv)
Using **tfenv** is the best way to manage Terraform versions.
```bash
brew install tfenv
tfenv install 1.5.0
tfenv use 1.5.0
```

## Linux

### Install Latest Version
```bash
# Ubuntu/Debian
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform
```

### Install Specific Version (Recommended: tfenv)
```bash
git clone --depth=1 https://github.com/tfutils/tfenv.git ~/.tfenv
echo 'export PATH="$HOME/.tfenv/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

tfenv install 1.5.0
tfenv use 1.5.0
```

## Verification
```bash
terraform -version
```
