echo "Hello from .zshenv"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
source $NVM_DIR/nvm.sh

function exists() {
  # command -v (which) 
  # $1 refers to the first arg passed in (file)
  # 1: refers to stdin
  # write to /dev/null
  # 2: stderr write to /dev/null
  # Basically it will jus throw wtv output into /dev/null,
  # whoever uses this then checks for the exit code ($?) 
  command -v $1 1>/dev/null 2>/dev/null
}
