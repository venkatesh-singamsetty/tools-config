# Tools Configuration Profile
# Usage: Add the following line to your ~/.zshrc or ~/.bash_profile:
# source /Users/venkat/workspace/gitRepos/tools-config/tools_profile.sh

# --- Homebrew (Covers Gradle, Helm, Kubectl, AWS CLI, etc.) ---
if [[ -x "/opt/homebrew/bin/brew" ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# --- Java (OpenJDK) ---
if [[ -d "/opt/homebrew/opt/openjdk/libexec/openjdk.jdk/Contents/Home" ]]; then
    export JAVA_HOME="/opt/homebrew/opt/openjdk/libexec/openjdk.jdk/Contents/Home"
fi

# --- Go ---
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

# --- SDKMAN! (Gradle, Java versions) ---
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

# --- NVM (Node.js) ---
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# --- Pyenv (Python) ---
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi

# --- Python 3.13 (Homebrew) ---
if [[ -d "/opt/homebrew/opt/python@3.13/libexec/bin" ]]; then
    export PATH="/opt/homebrew/opt/python@3.13/libexec/bin:$PATH"
fi

# --- Tfenv (Terraform) ---
if [[ -d "$HOME/.tfenv/bin" ]]; then
    export PATH="$HOME/.tfenv/bin:$PATH"
fi


# --- Shell Completions (Optional) ---
# Uncomment to enable auto-completion for installed tools

# AWS CLI
# complete -C '/opt/homebrew/bin/aws_completer' aws

# Kubectl
# source <(kubectl completion zsh)

# Helm
# source <(helm completion zsh)

# Terraform
# complete -o nospace -C /opt/homebrew/bin/terraform terraform

# Docker
# source <(docker completion zsh)

# Kind
# source <(kind completion zsh)

# --- PostgreSQL Client ---
if [[ -d "/opt/homebrew/opt/postgresql@17/bin" ]]; then
    export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"
fi

# psql
# source <(psql completion zsh)
