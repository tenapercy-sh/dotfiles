export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="miloshadzic"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

export GITHUB_SPRINGCARE_TOKEN=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
export PATH="/opt/homebrew/bin:$PATH"
export NVM_DIR="$HOME/.nvm"; [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"; [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
export SPRING_DIRECTORY=$HOME/SpringCare

export CERT_PATH="$HOME/ca_certs/zscaler-custom-ca-bundle.pem"
export CERT_DIR="$HOME/ca_certs/"
export SSL_CERT_FILE=${CERT_PATH}
export SSL_CERT_DIR=${CERT_DIR}
export REQUESTS_CA_BUNDLE=${CERT_PATH} # PIP,
export NODE_EXTRA_CA_CERTS=${CERT_PATH} # NPM
export AWS_CA_BUNDLE=${CERT_PATH}
export PIP_CERT=${CERT_PATH}
export HTTPLIB2_CA_CERTS=${CERT_PATH}
export SSL_CERT_FILE="${CERT_PATH}"
export GAM_CA_FILE=${CERT_PATH}
if [ -f ~/.env_vars ]; then source ~/.env_vars; fi
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
[[ ! -f $SPRING_DIRECTORY/spring-cli/init.sh ]] || source $SPRING_DIRECTORY/spring-cli/init.sh
