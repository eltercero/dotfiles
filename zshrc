ZSH=$HOME/.oh-my-zsh
ZSH_THEME="custompanda"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="true"

plugins=(git bundler brew gem rbates rails heroku)

export PATH="/usr/local/bin:$PATH"
export EDITOR='subl'

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

source $ZSH/oh-my-zsh.sh

alias grrr="git rrrebase"

alias ezsh="subl ~/.zshrc"
alias rzsh="source ~/.zshrc"

# https://github.com/sharkdp/bat 
alias cat='bat'
alias batlog="tlog | bat --paging=never -l log"

# https://github.com/junegunn/fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

