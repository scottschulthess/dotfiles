# ANTIGEN CONFIG BELOW
source ~/dotfiles/antigen/antigen.zsh
antigen use oh-my-zsh
antigen theme robbyrussell
antigen bundle git
antigen bundle kube-ps1
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle ruby
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle robbyrussell/oh-my-zsh plugins/z
antigen bundle
antigen apply


# Add k8s target to prompt
# https://github.com/jonmosco/kube-ps1
export KUBE_PS1_NS_ENABLE=false
export KUBE_PS1_SEPARATOR=''
export KUBE_PS1_SYMBOL_DEFAULT=''
export KUBE_PS1_SYMBOL_ENABLE=false

# Override entire prompt expressly to override the directories shown to 3 instead of the default 1
# Also prepend k8s context
PROMPT='$(kube_ps1)%(?:%{%}➜ :%{%}➜ ) %{$fg[cyan]%}%~%{$reset_color%} $(git_prompt_info)'

DISABLE_AUTO_TITLE=true

# set editor to vim
export VISUAL=nvim
export EDITOR=$VISUAL

# add sbin to path
export PATH="/usr/local/sbin:$PATH"
export PATH=~/bin:$PATH
export GO_ROOT=/usr/local
export GEM_SOURCE=http://yarp.dev

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin


# GVM (go version manager) config
[[ -s "/Users/scottschulthess/.gvm/scripts/gvm" ]] && source "/Users/scottschulthess/.gvm/scripts/gvm"

export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"

alias python=python3

command_exists () {
  type "$1" &> /dev/null ;
}
if command_exists rbenv ; then
  eval "$(rbenv init -)"
fi


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/scottschulthess/.sdkman"
[[ -s "/Users/scottschulthess/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/scottschulthess/.sdkman/bin/sdkman-init.sh"
export GRADLE_HOME="/Users/scottschulthess/.sdkman/candidates/gradle/current"

export GO111MODULE=on

alias cd='cd -P' # https://unix.stackexchange.com/questions/55713/make-cd-follow-symbolic-links

export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/Users/scottschulthess/Library/Python/3.8/bin:$PATH"


export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion


autoload -U colors; colors

# Kube completion
source <(kubectl completion zsh)

# Colorize the ls output ##
alias ls='ls --color=auto'
# Increase zsh history
HISTSIZE=30000000
SAVEHIST=30000000

# Disable AWS pager https://stackoverflow.com/questions/60122188/how-to-turn-off-the-pager-for-aws-cli-return-value
export AWS_PAGER=""
alias k=kubectl

export GONOSUMDB=stash.zipcar.com/*
export GOPRIVATE=stash.zipcar.com/*

# https://blog.mact.me/2012/09/06/using-watch-with-a-bash-alias
alias watch='watch '

export PYTHONPATH="/usr/local/lib/python3.9/site-packages"

# Alias for typora https://support.typora.io/Use-Typora-From-Shell-or-cmd/
alias typora="open -a typora"
