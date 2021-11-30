# ZSH setup 
export ZSH=/Users/vreid/.oh-my-zsh

ZSH_THEME="agnoster"

DEFAULT_USER=vreid

source $ZSH/oh-my-zsh.sh

# Path
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin"

# Environment secrets
source $HOME/.zsh_env_secrets

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
alias rmn="mv node_modules/ .deleting/ && rm -rf .deleting/ &"
alias fixmouse="cd ~/Library/Preferences && rm com.apple.AppleMultitouchMouse.plist && rm com.apple.driver.AppleBluetoothMultitouch.mouse.plist && osascript -e 'tell app \"loginwindow\" to «event aevtrrst»'"
alias empty='cat /dev/null >'
alias ip="curl -s -X GET https://checkip.amazonaws.com | sed s/\r\n// | pbcopy && pbpaste && echo '\nIP copied to clipboard!'"
alias cdm="cd ~/Documents/Workspaces/Node/mega-mentor"
alias cdi="cd ~/Documents/Workspaces/Node/infra-mentor"
alias flushdns="sudo killall -HUP mDNSResponder"

alias gbc='f() { git branch $1 && git checkout $1 }; f'
alias gbd='git branch -d'
alias gcl='git clean -f -i'
alias gco='git checkout'
alias gfp='git fetch && git pull'
alias gmd='git merge --no-commit develop'
alias grh='git reset --hard'
alias gst='git status'
alias gstash='git add "*" && git stash save $1'
alias gpop='git stash pop'
alias pnx='pnpm run nx --'

# Alias functions
kn() {
  for x in `ps -a | grep node | grep -v extensions | grep -v Adobe | grep -v "Visual Studio" | grep -v grep | awk '{print $2}' | tr '\n' ' '`
  do
    kill -9 $x
    echo "Killed node pid $x"
  done 
}

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
