# Install Java

## Distribution URL
- **Official OpenJDK**: [https://jdk.java.net/](https://jdk.java.net/)
- **Adoptium (Temurin)**: [https://adoptium.net/](https://adoptium.net/)

## MacOS

Using Homebrew:

```bash
# Install latest OpenJDK
brew install openjdk

# For a specific version (e.g., Java 25)
brew install openjdk@25
```

After installation, you may need to symlink it or set `JAVA_HOME`. Follow the instructions printed by Homebrew.

Example to set `JAVA_HOME` for OpenJDK:
```bash
export JAVA_HOME="/opt/homebrew/opt/openjdk/libexec/openjdk.jdk/Contents/Home"
```

## Linux

### Ubuntu / Debian

```bash
# Update package index
sudo apt update

# Install default JDK (latest available)
sudo apt install default-jdk

# Install specific version (e.g. 25)
sudo apt install openjdk-25-jdk

# Verify installation
java -version
```

### Fedora / RHEL / CentOS

```bash
# Install latest OpenJDK
sudo dnf install java-latest-openjdk-devel

# Install specific version (e.g. 25)
sudo dnf install java-25-openjdk-devel

# Verify installation
java -version
```
