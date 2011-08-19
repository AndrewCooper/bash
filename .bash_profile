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

# Set PATH so it includes user's private bin if it exists
# if [ -d "${HOME}/bin" ] ; then
#   PATH="${HOME}/bin:${PATH}"
# fi

# Set MANPATH so it includes users' private man if it exists
# if [ -d "${HOME}/man" ]; then
#   MANPATH="${HOME}/man:${MANPATH}"
# fi

# Set INFOPATH so it includes users' private info if it exists
# if [ -d "${HOME}/info" ]; then
#   INFOPATH="${HOME}/info:${INFOPATH}"
# fi

#KEYCHAIN_HOST=`uname -n`-`uname -s`
#~/keychain --host $KEYCHAIN_HOST id_rsa
#[ -f "$HOME/.keychain/$KEYCHAIN_HOST-sh" ] && \
#       . "$HOME/.keychain/$KEYCHAIN_HOST-sh"
#[ -f "$HOME/.keychain/$KEYCHAIN_HOST-sh-gpg" ] && \
#       . "$HOME/.keychain/$KEYCHAIN_HOST-sh-gpg"

export GIT_SSH="C:\Program Files\PuTTY\plink.exe"
