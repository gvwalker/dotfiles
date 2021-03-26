source ~/.dotbare/dotbare.plugin.zsh
# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
eval "$(starship init zsh)"

alias ls='exa'
alias ll='ls -la'
alias vim='nvim'
