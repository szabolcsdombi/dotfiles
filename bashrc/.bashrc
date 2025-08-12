[[ $- != *i* ]] && return

. ~/.venv/bin/activate

export EDITOR='nvim'

HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

shopt -s histappend
shopt -s checkwinsize

PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias ll='ls -alF'
alias vim='nvim'
alias lg='lazygit'
alias ya='yazi'
