#!/bin/bash

# Terminal
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Docker (boot2docker)
$(boot2docker shellinit)

# Java
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`

# Node
source $(brew --prefix nvm)/nvm.sh
export NVM_DIR=~/.nvm

# Homebrew
export PATH="/usr/local/bin:$PATH" 

if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

# Aliases
source ~/.bash_alias

# Python
export ARCHFLAGS="-arch x86_64"

export PIP_REQUIRE_VIRTUALENV=true
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

syspip() {
	PIP_REQUIRE_VIRTUALENV="" pip "$@"
}
