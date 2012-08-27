# git aliases
alias gs='git status'
alias gf='git fetch'
alias gb='git branch'
alias gd='git diff'
alias gdc='git diff --cached'
alias gc='git commit -e'
alias ga='git add'
alias gl='git log'
alias gps='git push'
alias gpl='git pull'
alias gco='git checkout'
alias gdd='git-diff-divert'
alias can-haz='sudo apt-get install'
alias gg='git grep'

complete -o default -o nospace -F _git_checkout gco
complete -o default -o nospace -F _git_fetch gf

PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
PS1='\e[1;4;30;32m\u@\h \w\e[24m$(__git_ps1 " (%s)")\e[0m\n \$ '

function title {
    echo -en "\033]2;$@\007"
}
