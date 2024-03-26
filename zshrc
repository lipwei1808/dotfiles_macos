echo "Hello from zshrc!"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# zsh Configurations
ZSH_THEME="eastwood"
CASE_SENSITIVE="true"
HIST_STAMPS="dd.mm.yyyy"

# Set Variables
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"
export ZSH="$HOME/.oh-my-zsh"
export NVM_DIR="$HOME/.nvm"
[ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" # This loads nvm
[ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion
JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home
export JAVA_HOME

# Enable vi mode
bindkey -v

# Plugins
plugins=(
  git
  zsh-autosuggestions
  web-search
  vi-mode
)

# Aliases
alias zshconfig="vim ~/.zshrc"
alias ys="yarn start"
alias yd="yarn dev"
alias lsA="ls -lAFhG" # A: all without . and .. | F: add / for directories | H: change to readable file size
alias exa="exa -laFh --git"
alias bbd="brew bundle dump --force --describe"
alias trail='<<<${(F)path}'
alias sourcez='source ~/.zshrc'
alias tlw='cd ~/Desktop/tanlipwei && code . && yarn dev'
alias sgu='cd ~/Desktop/sgu-frontend && code . && yarn dev'

# Path Variables
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin"


# Functions

function mkcd() {
  mkdir -p "$@" && cd "$_";
}

function exists() {
  command -v $1 >/dev/null 2>&1
}

# Load the zsh
source $ZSH/oh-my-zsh.sh
# export PATH="/opt/homebrew/anaconda3/bin:$PATH"  # commented out by conda initialize

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
