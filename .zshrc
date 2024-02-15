# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/shogo/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH"
eval "$(starship init zsh)"

#Alias

if type exa >/dev/null 2>&1; then
  alias e='exa'
fi

if type bat >/dev/null 2>&1; then
  alias b='bat'
fi
