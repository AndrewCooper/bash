###########################################################
#
#   ~/.bash_aliases
#
#	Set up command aliases for interactive shells
#
###########################################################
#
# ALIASES
# 	Aliases allow a string to be substituted for a word when it is used as the
# 	first word of a simple command.  The shell maintains  a  list  of  aliases
# 	that may be set and unset with the alias and unalias builtin commands (see
# 	SHELL BUILTIN COMMANDS below).  The first word of each simple command,  if
# 	unquoted,  is  checked  to  see  if  it has an alias.  If so, that word is
# 	replaced by the text of the alias.  The characters /, $, `, and = and  any
# 	of  the  shell  metacharacters  or quoting characters listed above may not
# 	appear in an alias name.  The replacement text may contain any valid shell
# 	input,  including shell metacharacters.  The first word of the replacement
# 	text is tested for aliases, but a word that is identical to an alias being
# 	expanded  is not expanded a second time.  This means that one may alias ls
# 	to ls -F, for instance, and bash does not try to  recursively  expand  the
# 	replacement  text.   If  the last character of the alias value is a blank,
# 	then the next command word following the alias is also checked  for  alias
# 	expansion.
# 
# 	Aliases  are  created  and listed with the alias command, and removed with
# 	the unalias command.
# 
# 	There is no mechanism for using arguments in  the  replacement  text.   If
# 	arguments  are  needed,  a  shell  function  should be used (see FUNCTIONS
# 	below).
# 
# 	Aliases are not expanded when the shell is  not  interactive,  unless  the
# 	expand_aliases  shell  option  is  set using shopt (see the description of
# 	shopt under SHELL BUILTIN COMMANDS below).
# 
# 	The rules concerning the definition and use of aliases are  somewhat  con-
# 	fusing.  Bash always reads at least one complete line of input before exe-
# 	cuting any of the commands on that line.  Aliases are expanded when a com-
# 	mand  is  read,  not  when it is executed.  Therefore, an alias definition
# 	appearing on the same line as another command does not take  effect  until
# 	the  next line of input is read.  The commands following the alias defini-
# 	tion on that line are not affected by the new  alias.   This  behavior  is
# 	also  an  issue  when functions are executed.  Aliases are expanded when a
# 	function definition is read, not when the function is executed, because  a
# 	function  definition  is  itself  a  compound  command.  As a consequence,
# 	aliases defined in a function are not available until after that  function
# 	is executed.  To be safe, always put alias definitions on a separate line,
# 	and do not use alias in compound commands.
# 
# 	For almost every purpose, aliases are superseded by shell functions.
# 
###########################################################
#
# alias [-p] [name[=value] ...]
# 	Alias  with  no  arguments or with the -p option prints the list of
# 	aliases in the form alias  name=value  on  standard  output.   When
# 	arguments  are  supplied,  an  alias is defined for each name whose
# 	value is given.  A trailing space in  value causes the next word to
# 	be  checked for alias substitution when the alias is expanded.  For
# 	each name in the argument list for which no value is supplied,  the
# 	name  and value of the alias is printed.  Alias returns true unless
# 	a name is given for which no alias has been defined.
#
###########################################################
#
# Some example alias instructions
# If these are enabled they will be used instead of any instructions
# they may mask.  For example, alias rm='rm -i' will mask the rm
# application.  To override the alias instruction use a \ before, ie
# \rm will call the real rm not the alias.
#
###########################################################

if test -n "$BASH_TRACE_STARTUP"; then echo Entering '~/.bash_aliases'; fi

# Interactive operation...
#
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'


# Default to human readable figures
#
# alias df='df -h'
# alias du='du -h'

# Misc
#
# alias less='less -r'                          # raw control characters
# alias whence='type -a'                        # where, of a sort
# alias grep='grep --color'                     # show differences in colour
# alias egrep='egrep --color=auto'              # show differences in colour
# alias fgrep='fgrep --color=auto'              # show differences in colour
  alias cls='echo -e "\033c"'                   # Clear and Reset Scrollback Buffer

# Directory listings
#
  alias ls='ls -hF --color=auto'                # classify files in colour
# alias dir='ls --color=auto -l'                # like DOS dir
# alias dirw='ls --color=auto -x'               # like DOS dir /w
  alias ll='ls -l'                              # long list
  alias la='ls -A'                              # all but . and ..
  alias l='ls -CF'                              #
  
# Searching with grep
#
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
  alias srcgrep='grep -I --include="*.h" --include="*.hpp" --include="*.c" --include="*.cpp"'

if test -n "$BASH_TRACE_STARTUP"; then echo Leaving '~/.bash_aliases'; fi
