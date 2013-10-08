#!/bin/bash

# Terminal
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_25.jdk/Contents/Home"
#export JAVA_HOME="/usr/libexec/java_home -v 1.7"

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
