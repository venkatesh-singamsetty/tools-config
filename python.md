# Install Python

## Distribution URL
- **Official Downloads**: [https://www.python.org/downloads/](https://www.python.org/downloads/)

## MacOS & Linux (Recommended: pyenv)

Using **pyenv** allows you to easily switch between multiple versions of Python.

### Install pyenv
**MacOS**:
```bash
brew install pyenv
```
**Linux**:
```bash
curl https://pyenv.run | bash
```

### Install Latest Version
```bash
# List available versions
pyenv install --list

# Install latest stable (e.g., 3.12.0)
pyenv install 3.12.0
pyenv global 3.12.0
```

### Install Specific Version
```bash
pyenv install 3.10.11
pyenv global 3.10.11
```

## MacOS (Homebrew)
```bash
brew install python
```

## Linux (System Package)
```bash
sudo apt update
sudo apt install python3
```

## Verification
```bash
python3 --version
```
