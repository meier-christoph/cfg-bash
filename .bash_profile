#!/bin/bash

# Terminal
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export EDITOR=subl
export COPYFILE_DISABLE=1

# Homebrew
export PATH="/usr/local/bin:$PATH"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

# Docker
if [ -z "$DOCKER_MACHINE_NAME" ]; then
  eval "$(docker-machine env local)"
fi

# Java
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export GROOVY_HOME=/usr/local/opt/groovy/libexec

# Node
if [ -f $(brew --prefix nvm)/nvm.sh ]; then
  source $(brew --prefix nvm)/nvm.sh
  export NVM_DIR=~/.nvm
fi

# Ruby
eval "$(rbenv init -)"

# Aliases
source ~/.bash_alias

# Python
export ARCHFLAGS="-arch x86_64"

export PIP_REQUIRE_VIRTUALENV=true
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

syspip() {
	PIP_REQUIRE_VIRTUALENV="" pip "$@"
}
