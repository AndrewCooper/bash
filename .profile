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

# User's private bin
#   Set PATH so it includes user's private bin if it exists
#
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# RVM (Ruby Version Manager)
#
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
