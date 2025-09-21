ZSH_THEME="robbyrussell"
CASE_SENSITIVE=true
plugins=(git)

export VIRTUAL_ENV_DISABLE_PROMPT=1
export EDITOR='nvim'

. ~/.oh-my-zsh/oh-my-zsh.sh
. ~/.venv/bin/activate

alias lg='lazygit'
