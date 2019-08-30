# Enable completions
autoload -Uz compinit;
compinit -C;

# Antibody
. ~/.zsh_antibody_plugins;

# Config
export COMPLETION_WAITING_DOTS="true";
setopt interactivecomments;

# Run the previous command as sudo, thanks gh:cdfuller!
alias pls='sudo $(fc -nl -1)';

alias subl="open -a /Applications/Sublime\ Text.app"
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
export PATH=/usr/local/bin:$PATH
export PATH="/usr/local/opt/mariadb@10.3/bin:$PATH"
export SLACK_USER=brian
export VOXSUP_DEV_ENV=NATIVE

# After-hook
if [ -f ~/.zshrc_local_after ]; then
  . ~/.zshrc_local_after;
fi;
