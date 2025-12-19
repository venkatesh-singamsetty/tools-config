# Tools Configuration

This repository contains installation and configuration guides for various development tools.

## Configured Tools

| Tool | Description | Configuration Guide |
|------|-------------|---------------------|
| **AWS CLI** | Command line interface for AWS services | [aws.md](aws.md) |
| **Go** | The Go programming language | [go.md](go.md) |
| **Gradle** | Build automation tool for multi-language software development | [gradle.md](gradle.md) |
| **Helm** | The package manager for Kubernetes | [helm.md](helm.md) |
| **Java** | Java Development Kit (OpenJDK) | [java.md](java.md) |
| **Kubectl** | Kubernetes command-line tool | [kubectl.md](kubectl.md) |
| **Node.js** | JavaScript runtime built on Chrome's V8 engine | [node.md](node.md) |
| **Python** | Interpreted, high-level, general-purpose programming language | [python.md](python.md) |
| **Terraform** | Infrastructure as Code software tool | [terraform.md](terraform.md) |

## Environment Setup

To ensure all tools are available in your path with the correct versions, source the `tools_profile.sh` script in your shell configuration profile (e.g., `~/.bash_profile` or `~/.zshrc`).

```bash
source $(pwd)/tools_profile.sh
```

This script centralizes environment variables for Go, Java, Node.js, Python, and others, ensuring a consistent development environment.

## Tool Verification & Installation

To verify that all tools are correctly installed and configured, run the `configure_and_test_tools.sh` script:

```bash
./configure_and_test_tools.sh
```

This script will:
1. Check if each tool is installed.
2. Print the version and location of installed tools.
3. **Automatically attempt to install missing tools** using Homebrew.