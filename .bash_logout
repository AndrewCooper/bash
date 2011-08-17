###########################################################
#
#   ~/.bash_logout
#
#	Executed by Bash when login shell exits.
#
###########################################################

if test -n "$BASH_TRACE_STARTUP"; then echo Entering '~/.bash_logout'; fi

# when leaving the console clear the screen to increase privacy
#
if [ "$SHLVL" = 1 ]; then
    [ -x /usr/bin/clear_console ] && /usr/bin/clear_console -q
fi

if test -n "$BASH_TRACE_STARTUP"; then echo Leaving '~/.bash_logout'; fi
