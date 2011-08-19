###########################################################
#
#   ~/.bashrc
#
###########################################################
#
# Startup file execution order
#
# Login shell (interactive or non with --login)
#   /etc/profile
#       /etc/profile.d/*
#       /etc/bash.bashrc
#   ~/.bash_profile
#       ~/.bashrc
#       ~/.profile
#
# Interactive non-login shell (most GUI terminals and subshells)
#	~/.bashrc
#
# GUI Environment
#   /etc/profile
#       /etc/profile.d/*

# If not running interactively, don't do anything
if ( shopt -q login_shell ); then return; fi

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
