###########################################################
#
#   ~/.bash_profile
#
#	Executed by Bash for login shells, interactive or not
#
###########################################################

if test -n "$BASH_TRACE_STARTUP"; then echo Entering '~/.bash_profile'; fi

# ~/.bashrc
#
if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi

if test -n "$BASH_TRACE_STARTUP"; then echo Leaving '~/.bash_profile'; fi
