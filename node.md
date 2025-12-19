# Install Node.js

## Distribution URL
- **Official Website**: [https://nodejs.org/](https://nodejs.org/)

## MacOS & Linux (Recommended: NVM)

Using **nvm** (Node Version Manager) is the best way to manage Node.js versions on both MacOS and Linux.

### Install NVM
```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
source ~/.nvm/nvm.sh
```

### Install Latest Version
```bash
nvm install node
nvm use node
```

### Install Specific Version
```bash
# Install specific version (e.g., 18)
nvm install 18
nvm use 18

# Install specific LTS
nvm install --lts
```

## MacOS (Homebrew Alternative)
```bash
brew install node
```

## Verification
```bash
node -v
npm -v
```
