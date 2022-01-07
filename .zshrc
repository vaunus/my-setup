# ZSH setup 
export ZSH=/Users/vreid/.oh-my-zsh

ZSH_THEME="agnoster"

DEFAULT_USER=vreid

source $ZSH/oh-my-zsh.sh

# Path
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin"

# Terminal setup
export LSCOLORS="exfxcxdxbxegedabagacad"

function check_last_exit_code() {
  local LAST_EXIT_CODE=$?
  if [[ $LAST_EXIT_CODE -ne 0 ]]; then
    local EXIT_CODE_PROMPT=' '
    EXIT_CODE_PROMPT+="%{$fg[red]%}-%{$reset_color%}"
    EXIT_CODE_PROMPT+="%{$fg_bold[red]%}$LAST_EXIT_CODE%{$reset_color%}"
    EXIT_CODE_PROMPT+="%{$fg[red]%}-%{$reset_color%}"
    echo "$EXIT_CODE_PROMPT"
  fi
}
RPROMPT='$(check_last_exit_code)'

# Aliases
alias more=less
alias reload="source ~/.zshrc"
alias ps="ps aux"
alias wget="curl -O"
alias ls="ls -Ga"
alias ll="ls -l -h"
alias vi="vim"
alias locate="mdfind"
alias empty='cat /dev/null >'
alias rmn="mv node_modules/ .deleting/ && rm -rf .deleting/ &"
alias pnx='pnpm run nx --'
alias cdw="cd ~/Workspaces"
alias ip="curl -s -X GET https://checkip.amazonaws.com | sed s/\r\n// | pbcopy && pbpaste && echo '\nIP copied to clipboard!'"
alias flushdns="sudo killall -HUP mDNSResponder"
alias fixmouse="cd ~/Library/Preferences && rm com.apple.AppleMultitouchMouse.plist && rm com.apple.driver.AppleBluetoothMultitouch.mouse.plist && osascript -e 'tell app \"loginwindow\" to «event aevtrrst»'"
alias emptymongo="mongo --quiet --eval 'db.getMongo().getDBNames().forEach(function(i){db.getSiblingDB(i).dropDatabase()})'"

# Git aliases
alias gco='git checkout'
alias gst='git status'
alias gfp='git fetch && git pull'
alias gbc='f() { git branch $1 && git checkout $1 }; f'
alias gbd='git branch -d'
alias grh='git reset --hard'
alias gcl='git clean -f -i'
alias gmd='git merge --no-commit develop'
alias gpush='git add "*" && git stash save $1'
alias gpop='git stash pop'

# Alias functions
gdiff() {
  if [[ "$#" -eq 2 ]]
  then
    git log --oneline $(git merge-base $1 $2)..$2 | cut -d\  -f2-
  else
    echo "Usage: gdiff base-branch target-branch"
  fi
}

kn() {
  for x in `ps -a | grep node | grep -v extensions | grep -v Adobe | grep -v "Visual Studio" | grep -v grep | awk '{print $2}' | tr '\n' ' '`
  do
    kill -9 $x
    echo "Killed node pid $x"
  done 
}

# Fast key repeat
defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 1

# VSCode
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Node
export N_PREFIX=$HOME/.n
export PATH=$N_PREFIX/bin:$PATH

# PHP
#export PATH="$PATH:/usr/local/opt/php@7.0/bin"

# Ansible
#export PATH="/usr/local/opt/ansible@2.8/bin:$PATH"

# Python
eval "$(pyenv init -)"
eval "$(pyenv init --path)"

# ZSH secrets
source $HOME/.zsh_secrets
