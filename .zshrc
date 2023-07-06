# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/grant/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
alias ls="exa"
alias cat="bat"

# Catppuccin FZF theme
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

source ~/software/zsh-syntax-highlighting-theme/themes/catppuccin_mocha-zsh-syntax-highlighting.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

PATH="/home/grant/.local/bin:/home/grant/.config/emacs/bin:/home/grant/software/quickemu/:$PATH"

eval "$(starship init zsh)"
