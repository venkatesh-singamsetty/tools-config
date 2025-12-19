# Install Gradle

## Distribution URL
- **Official Releases**: [https://gradle.org/releases/](https://gradle.org/releases/)

## MacOS

### Install Latest Version
```bash
brew install gradle
```

### Install Specific Version
Using **SDKMAN!** (Recommended for managing multiple versions):
```bash
# Install SDKMAN
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

# List available versions
sdk list gradle

# Install specific version
sdk install gradle 7.6
```

## Linux

### Install Latest Version
```bash
# Ubuntu/Debian (via Snap)
sudo snap install gradle --classic

# Or via SDKMAN (works on Linux too)
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install gradle
```

### Install Specific Version
```bash
sdk install gradle 7.6
```

## Verification

# Check gradle version
gradle -version
```

### Create gradle wrapper

Create the gradlew wrapper script
```bash
gradle wrapper
```

### Build, Test and Run

Build the project
```bash
./gradlew build
```

Test the project
```bash
./gradlew test
```

Run the project
```bash
./gradlew run
```
