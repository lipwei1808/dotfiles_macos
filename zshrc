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

# Plugins
plugins=(
  git
  zsh-autosuggestions
  web-search
)

source $ZSH/oh-my-zsh.sh
source $(brew --prefix nvm)/nvm.sh
source $NVM_DIR/nvm.sh

# Aliases
alias zshconfig="vim ~/.zshrc"
alias ys="yarn start"
alias yd="yarn dev"
alias lsA="ls -lAFhG" # A: all without . and .. | F: add / for directories | H: change to readable file size
alias exa="exa -laFh --git"
alias bbd="brew bundle dump --force --describe"
alias trail='<<<${(F)path}'

# Path Variables
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Functions

function mkcd() {
  mkdir -p "$@" && cd "$_";
}

function exists() {
  command -v $1 >/dev/null 2>&1
}

