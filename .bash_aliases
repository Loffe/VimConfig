function _exists()
{
  command -v $1 > /dev/null 2>&1
  echo "$(( !$? ))"
}

alias can-haz='sudo apt-get install'
alias beep='play /usr/share/sounds/ubuntu/stereo/system-ready.ogg 2>/dev/null'
alias dusch='du -sch'

PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
PS1='\e[1;4;30;32m\u@\h \w\e[24m$(__git_ps1 " (%s)")\e[0m\n \$ '

function title {
    echo -en "\033]2;$@\007"
}

function _update_ps1()
{
   export PS1="$(~/.vim/powerline-bash.py $?)"
}

# Poweline style bash prompt!
export PROMPT_COMMAND="_update_ps1"

##########################################################################
# Git aliases (with bash completion!)                                    #
# Note: __git_complete is not a public function, so completion can break #
##########################################################################
function _make_git_alias()
{
    local shortname=$1
    local longname=$2
    shift
    local rest=""
    while [ $# -gt 0 ]; do
        rest=$rest" $1"
        shift
    done
    rest='git'$rest
    alias $shortname="$rest"

    if [[ $(_exists __git_complete) -ne 0 ]]; then
        __git_complete $shortname _git_$longname
    fi
}

_make_git_alias g1 log --oneline
_make_git_alias ga add
_make_git_alias gb branch
_make_git_alias gco checkout
_make_git_alias gcl clone
_make_git_alias gd diff
_make_git_alias gdc diff --cached
_make_git_alias gf fetch
_make_git_alias gl log
_make_git_alias gc commit -e
_make_git_alias gca commit -ae
_make_git_alias gp push
_make_git_alias gpu pull
_make_git_alias gr rebase
_make_git_alias gs status
_make_git_alias gg grep
