###########################################################
#
#   ~/.bashrc
#
#	Executed by Bash for interactive non-login shells
#
###########################################################

if test -n "$BASH_TRACE_STARTUP"; then echo Entering bashrc; fi

# source system's bashrc file
#
if [ -r "/etc/bashrc" ]; then
  source "/etc/bashrc"
fi

# If not running interactively, don't do anything
if [ -z "$PS1" ]; then return; fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Environment Options
#
export PATH=${HOME}/.local/bin:${PATH}

# Shell Options
#
if [ -r "${HOME}/.config/bash/bash_shopts" ]; then
  source "${HOME}/.config/bash/bash_shopts"
fi

# History Options
#
if [ -r "${HOME}/.config/bash/bash_histenv" ]; then
  source "${HOME}/.config/bash/bash_histenv"
fi

# Aliases
#
if [ -r "${HOME}/.config/bash/bash_aliases" ]; then
  source "${HOME}/.config/bash/bash_aliases"
fi

# Functions
#
if [ -r "${HOME}/.config/bash/bash_functions" ]; then
  source "${HOME}/.config/bash/bash_functions"
fi

# Prompts
#
if [ -r "${HOME}/.config/bash/bash_prompts" ]; then
  source "${HOME}/.config/bash/bash_prompts"
fi

# RVM (Ruby Version Manager)
#
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

if test -n "$BASH_TRACE_STARTUP"; then echo Leaving bashrc; fi
