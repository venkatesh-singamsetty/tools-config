#!/bin/bash

echo "--------------------------------------------------"
echo "Verifying Tool Versions & Locations"
echo "--------------------------------------------------"

# Source the profile to ensure environment variables are set
source "$(dirname "$0")/tools_profile.sh"

echo "1. AWS CLI:"
if command -v aws &> /dev/null; then
    echo "Path: $(command -v aws)"
    aws --version
else
    echo "❌ AWS CLI not found, installing..."
    brew install awscli
fi
echo ""

echo "2. Go:"
if command -v go &> /dev/null; then
    echo "Path: $(command -v go)"
    go version
else
    echo "❌ Go not found, installing..."
    brew install go
fi
echo ""

echo "3. Gradle:"
if command -v gradle &> /dev/null; then
    echo "Path: $(command -v gradle)"
    gradle -version | grep "Gradle" | head -n 1
else
    echo "❌ Gradle not found, installing..."
    brew install gradle
fi
echo ""

echo "4. Helm:"
if command -v helm &> /dev/null; then
    echo "Path: $(command -v helm)"
    helm version --short
else
    echo "❌ Helm not found, installing..."
    brew install helm
fi
echo ""

echo "5. Java:"
if command -v java &> /dev/null; then
    echo "Path: $(command -v java)"
    java -version 2>&1 | head -n 1
else
    echo "❌ Java not found, installing..."
    brew install openjdk
    sudo ln -sfn /opt/homebrew/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
fi
echo ""

echo "6. Kubectl:"
if command -v kubectl &> /dev/null; then
    echo "Path: $(command -v kubectl)"
    kubectl version --client --output=yaml | grep "gitVersion"
else
    echo "❌ Kubectl not found, installing..."
    brew install kubectl
fi
echo ""

echo "7. Node.js:"
if command -v node &> /dev/null; then
    echo "Path: $(command -v node)"
    echo "Node: $(node -v)"
    echo "NPM: $(npm -v)"
else
    echo "❌ Node.js not found, installing..."
    brew install node
fi
echo ""

echo "8. Python:"
if command -v python3 &> /dev/null; then
    echo "Path: $(command -v python3)"
    python3 --version
else
    echo "❌ Python3 not found, installing..."
    brew install python
fi
echo ""

echo "9. Terraform:"
if command -v terraform &> /dev/null; then
    echo "Path: $(command -v terraform)"
    terraform --version | head -n 1
else
    echo "❌ Terraform not found, installing..."
    brew tap hashicorp/tap && brew install hashicorp/tap/terraform
fi
echo "--------------------------------------------------"
