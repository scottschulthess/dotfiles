
# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.

DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(rbenv tmux gitfast git-extras)

source $ZSH/oh-my-zsh.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Customize to your needs...
#

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
# for postgres.app
export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

#DISABLE_AUTO_TITLE=true


#source ~/dotfiles/zsh-notify/notify.plugin.zsh

export NOTIFY_COMMAND_COMPLETE_TIMEOUT=8
export SYS_NOTIFIER=/usr/local/bin/terminal-notifier

export PATH="$HOME/.rbenv/bin:$PATH"

export PATH="/usr/local/bin:$PATH"
eval "$(rbenv init -)"


export TNS_ADMIN=/etc
#export JRUBY_OPTS="--1.9 -J-XX:MaxPermSize=256m -Xcompile.invokedynamic=false -J-XX:+TieredCompilation -J-XX:TieredStopAtLevel=1 -J-noverify -Xcompile.mode=OFF --headless"
#export JRUBY_OPTS="--client -J-d32 -J-XX:MaxPermSize=256m -Xms256m -Xmx512m -Xcompile.invokedynamic=false -J-XX:+TieredCompilation -J-XX:TieredStopAtLevel=1 -J-noverify -Xcompile.mode=OFF --headless "

export JRUBY_OPTS='--1.9 -J-Xmx1024m -J-XX:MaxPermSize=256m -Xcompile.invokedynamic=false -J-XX:+TieredCompilation -J-XX:TieredStopAtLevel=1 -J-noverify -Xcompile.mode=OFF --headless -J-XX:+CMSClassUnloadingEnabled -J-XX:+UseConcMarkSweepGC'
source ~/.private_info

#export DYLD_LIBRARY_PATH=/Users/sschulthess/Downloads/instantclient_11_2
export DYLD_LIBRARY_PATH=/opt/oracle/instantclient_11_2

export NLS_LANGUAGE='AMERICAN'

export JAVACMD=`which java`
export GRUNT_NOTIFY=true

autoload -U predict-on
zle -N predict-on
zle -N predict-off
bindkey '^Z'   predict-on
bindkey '^X^Z' predict-off
zstyle ':predict' verbose 'yes'
