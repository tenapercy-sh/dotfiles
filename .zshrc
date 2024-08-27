export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="miloshadzic"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
export GITHUB_SPRINGCARE_TOKEN="$GH_SPRINGCARE_TOKEN"
source $ZSH/oh-my-zsh.sh

