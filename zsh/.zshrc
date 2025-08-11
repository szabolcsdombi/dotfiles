ZSH_THEME="robbyrussell"
CASE_SENSITIVE=true
plugins=(git)

export VIRTUAL_ENV_DISABLE_PROMPT=1
export EDITOR='nvim'

. ~/.oh-my-zsh/oh-my-zsh.sh
. ~/.venv/bin/activate

setopt localoptions rmstarsilent

alias lg='lazygit'
alias ya='yazi'
