#!/bin/bash

# Terminal
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export EDITOR=subl
export COPYFILE_DISABLE=1

# Homebrew
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Docker
#if which docker-machine; then
#  eval "$(docker-machine env default)"
#fi

# Binary
export PATH=~/bin:$PATH

# GO
export GOPATH=$HOME/dev/go
export PATH=$GOPATH/bin:$PATH

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# Java
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export GROOVY_HOME=/usr/local/opt/groovy/libexec

# Node
if [ -f $(brew --prefix nvm)/nvm.sh ]; then
  source $(brew --prefix nvm)/nvm.sh
  export NVM_DIR=~/.nvm
  #nvm use default
fi

# Ruby
#eval "$(rbenv init -)"

# Aliases
source ~/.bash_alias

# Python
export ARCHFLAGS="-arch x86_64"

export PIP_REQUIRE_VIRTUALENV=true
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

syspip() {
  PIP_REQUIRE_VIRTUALENV="" pip "$@"
}
