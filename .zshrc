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
alias ls="exa -lag --icons --color=always"
alias cat="bat"

# Catppuccin FZF theme
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

export EXA_COLORS="\
uu=36:\
gu=37:\
sn=32:\
sb=32:\
da=34:\
ur=34:\
uw=35:\
ux=36:\
ue=36:\
gr=34:\
gw=35:\
gx=36:\
tr=34:\
tw=35:\
tx=36:"

source /home/grant/.config/zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

PATH="/home/grant/.local/bin:/home/grant/.config/emacs/bin:/home/grant/software/quickemu:/home/grant/bin:$PATH"

eval "$(starship init zsh)"
