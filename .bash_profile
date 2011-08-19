###########################################################
#
#   ~/.bash_profile
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

# source the users bashrc if it exists
if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi


export GIT_SSH="C:\Program Files\PuTTY\plink.exe"