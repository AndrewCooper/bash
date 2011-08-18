###########################################################
#
#   ~/.bashrc
#
#	Executed by Bash for interactive non-login shells
#
###########################################################

if test -n "$BASH_TRACE_STARTUP"; then echo Entering '~/.bashrc'; fi

# If not running interactively, don't do anything
if [ -z "$PS1" ]; then return; fi

# Shell Options
#
if [ -f "${HOME}/.bash_shopts" ]; then
  source "${HOME}/.bash_shopts"
fi

# History Options
#
if [ -f "${HOME}/.bash_histenv" ]; then
  source "${HOME}/.bash_histenv"
fi

# Aliases
#
if [ -f "${HOME}/.bash_aliases" ]; then
  source "${HOME}/.bash_aliases"
fi

# Functions
#
if [ -f "${HOME}/.bash_functions" ]; then
  source "${HOME}/.bash_functions"
fi

# Prompts
#
if [ -f "${HOME}/.bash_prompts" ]; then
  source "${HOME}/.bash_prompts"
fi

# Environment
#
if [ $OSTYPE == "cygwin" -o $OSTYPE == "msys" ]; then 
  export GIT_SSH="C:\Program Files\PuTTY\plink.exe"
fi

# RVM (Ruby Version Manager)
#
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

if test -n "$BASH_TRACE_STARTUP"; then echo Leaving '~/.bashrc'; fi
