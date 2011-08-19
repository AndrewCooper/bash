###########################################################
#
#   ~/.profile
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

# This file is not read by bash(1) if ~/.bash_profile or ~/.bash_login
# exists.
#
# if running bash
if [ -n "${BASH_VERSION}" ]; then
  if [ -f "${HOME}/.bashrc" ]; then
    source "${HOME}/.bashrc"
  fi
fi
