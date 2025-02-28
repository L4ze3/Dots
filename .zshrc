export PATH=$HOME/bin:/bin:/sbin:/sbin/bin:/usr/local/bin:$HOME/.local/bin/:$HOME/.local/share:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

#ZSH_THEME="itchy"
#
PROMPT='%{$fg_bold[purple]%}> %{$reset_color%}'
#RPROMPT='%{$fg[blue]%}%3~%{$reset_color%}'
# auto-correction.
ENABLE_CORRECTION="true"

# plugins
plugins=(git archlinux python extract)

source $ZSH/oh-my-zsh.sh

# Enable colors and change prompt:
autoload -U colors && colors

# History in cache directory
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Basic auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

# vi mode
bindkey -v
export KEYTIMEOUT=1


# Use vim keys in tab complete menu
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# aliases
alias quit="exit"
alias q="exit"
alias :q="exit"
alias sl="ls | rev"
alias vim="nvim"

# functions
mkcd() { mkdir $1 && cd $1 }

