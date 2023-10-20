alias gsts="git status"
alias gsu="git submodule update --init"

# Point gpg key stubs to plugged in yubikey
alias lsyubi='gpg-connect-agent "scd serialno" "learn --force" /bye'

# Report total size of a directory
alias ducks="du -cksh"

# Save history after every command
export PROMPT_COMMAND='history -a'

# Aint nobody got time for :qa!
export EDITOR=nano

# Use gpg-agent for ssh
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
