###########################################################
#
#   ~/.profile
#
#	Executed by Bash for login shells
#
###########################################################

if test -n "$BASH_TRACE_STARTUP"; then echo Entering '~/.profile'; fi

# User's private bin
#   Set PATH so it includes user's private bin if it exists
#
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# RVM (Ruby Version Manager)
#
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

if test -n "$BASH_TRACE_STARTUP"; then echo Leaving '~/.profile'; fi
