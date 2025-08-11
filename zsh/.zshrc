ZSH_THEME="robbyrussell"
CASE_SENSITIVE=true
plugins=(git)

export TERMINAL=ghostty
export DISABLE_UPDATE_PROMPT=true
export DISABLE_AUTO_UPDATE=true
export VIRTUAL_ENV_DISABLE_PROMPT=1
export EDITOR='nvim'
export TERM=xterm

. ~/.oh-my-zsh/oh-my-zsh.sh

setopt localoptions rmstarsilent

alias lg='lazygit'
alias ya='yazi'

bindkey '^K' up-line-or-beginning-search
bindkey '^J' down-line-or-beginning-search

if [[ -d "$HOME/bin" ]]; then
    export PATH="$HOME/bin:$PATH"
fi

if [[ -f "$HOME/.env" ]]; then
    source "$HOME/.env"
fi
