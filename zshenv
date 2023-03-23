echo "Hello from .zshenv"

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
