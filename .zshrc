# ZSH setup 
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"

DEFAULT_USER=vaunus

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

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Aliases
alias more=less
alias reload="source ~/.zshrc"
alias ps="ps aux"
alias wget="curl -O"
alias ls="ls -Ga"
alias ll="ls -l -h"
alias vi="vim"
alias python="python3"
alias pip="pip3"
alias locate="mdfind"
alias empty='cat /dev/null >'
alias rmn="mv node_modules/ .deleting/ && rm -rf .deleting/ &"
alias cdw="cd ~/Workspaces"
alias ip="curl -s -X GET https://checkip.amazonaws.com | tr -d \\\n | pbcopy && pbpaste && echo '\n\nIP copied to clipboard!'"
alias flushdns="sudo killall -HUP mDNSResponder"
alias peerdeps='f() { npm info $1 peerDependencies }; f'

# Git aliases
alias gco='git checkout'
alias gst='git status'
alias gfp='git fetch --prune origin && git pull'
alias gbc='f() { git branch $1 && git checkout $1 }; f'
alias gbd='git branch -d'
alias gbr='git branch -m $1'
alias gbs='ggb' # npm git-branch-selector
alias gbl='git branch --list --color=always | cat'
alias grh='git reset --hard'
alias gcl='git clean -f -i'
alias gpush='git add "*" && git stash save $1'
alias gpop='git stash pop'
# recover stashes you've accidentally removed 
alias grecover='git fsck --unreachable | grep commit | cut -d" " -f3 | xargs git log --merges --no-walk --grep=WIP'

# Alias functions
gdiff() {
  if [[ "$#" -eq 2 ]]
  then
    git log --oneline $(git merge-base $1 $2)..$2 | cut -d\  -f2- | tail -r | sed -e 's/^/- /'
  else
    echo "Usage: gdiff base-branch target-branch"
  fi
}

kn() {
  for x in `ps -a | grep node | grep -v extensions | grep -v Adobe | grep -v "Cursor" | grep -v "Visual Studio" | grep -v "Obsidian" | grep -v "Discord" | grep -v grep | awk '{print $2}' | tr '\n' ' '`
  do
    kill -9 $x
    echo "Killed node pid $x"
  done 
}

# Fast key repeat
defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 1

# Disable DS_Store files
defaults write com.apple.desktopservices DSDontWriteNetworkStores true 

# Cursor
export PATH="$PATH:/Applications/Cursor.app/Contents/Resources/app/bin"

# Node
export N_PREFIX=$HOME/.n
export PATH=./node_modules/.bin:../node_modules/.bin:../../node_modules/.bin:../../../node_modules/.bin:../../../../node_modules/.bin:$N_PREFIX/bin:$PATH

# Pnpm
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# PHP
export PATH=/opt/homebrew/opt/php@7.4/bin:$PATH

# Rust
export PATH=$HOME/.cargo/bin:$PATH

# Terraform
# Fix for issue https://github.com/hashicorp/terraform-provider-aws/issues/20274#issuecomment-996795241
export GODEBUG=asyncpreemptoff=1

# Python
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
export PATH=$HOME/Library/Python/3.9/bin:$PATH

# ZSH secrets
source $HOME/.zsh_secrets

# bun completions
[ -s "/Users/vreid/.bun/_bun" ] && source "/Users/vreid/.bun/_bun"

# OpenJDK
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# MySQL
export PATH="/opt/homebrew/opt/mysql@8.4/bin:$PATH"
export PATH="/opt/homebrew/opt/mysql@8.0/bin:$PATH"
