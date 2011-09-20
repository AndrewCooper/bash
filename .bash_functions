###########################################################
#
#   ~/.bash_functions
#
#	Set up functions for interactive shells
#
###########################################################
#
# FUNCTIONS
# 	A shell function, defined as described above under SHELL GRAMMAR, stores a
# 	series of commands for later execution.  When the name of a shell function
# 	is used as a simple command name, the list  of  commands  associated  with
# 	that  function name is executed.  Functions are executed in the context of
# 	the current shell; no new process is created to interpret  them  (contrast
# 	this  with the execution of a shell script).  When a function is executed,
# 	the arguments to the function become the positional parameters during  its
# 	execution.   The  special  parameter  #  is updated to reflect the change.
# 	Special parameter 0 is unchanged.  The first element of the FUNCNAME vari-
# 	able is set to the name of the function while the function is executing.
# 
# 	All other aspects of the shell execution environment are identical between
# 	a function and its caller with these exceptions:   the  DEBUG  and  RETURN
# 	traps  (see  the  description of the trap builtin under SHELL BUILTIN COM-
# 	MANDS below) are not inherited unless the  function  has  been  given  the
# 	trace  attribute (see the description of the declare builtin below) or the
# 	-o functrace shell option has been enabled with the set builtin (in  which
# 	case  all  functions inherit the DEBUG and RETURN traps), and the ERR trap
# 	is not inherited unless the -o errtrace shell option has been enabled.
# 
# 	Variables local to the function may be declared  with  the  local  builtin
# 	command.   Ordinarily,  variables  and their values are shared between the
# 	function and its caller.
# 
# 	If the builtin command return is executed in a function, the function com-
# 	pletes  and  execution  resumes  with  the next command after the function
# 	call.  Any command associated with the RETURN trap is executed before exe-
# 	cution  resumes.   When a function completes, the values of the positional
# 	parameters and the special parameter # are restored to the values they had
# 	prior to the function's execution.
# 
# 	Function  names  and  definitions  may be listed with the -f option to the
# 	declare or typeset builtin commands.  The -F option to declare or  typeset
# 	will list the function names only (and optionally the source file and line
# 	number, if the extdebug  shell  option  is  enabled).   Functions  may  be
# 	exported  so  that  subshells  automatically have them defined with the -f
# 	option to the export builtin.  A function definition may be deleted  using
# 	the  -f  option to the unset builtin.  Note that shell functions and vari-
# 	ables with the same name may result in multiple identically-named  entries
# 	in  the  environment passed to the shell's children.  Care should be taken
# 	in cases where this may cause a problem.
# 
# 	Functions may be recursive.  No limit is imposed on the number  of  recur-
# 	sive calls.
#
###########################################################
#
# Shell Function Definitions
# 	A shell function is an object that is called like  a  simple  command  and
# 	executes  a  compound  command  with  a  new set of positional parameters.
# 	Shell functions are declared as follows:
# 
#   [ function ] name () compound-command [redirection]
#     	This defines a function named name.  The reserved word function  is
#     	optional.  If the function reserved word is supplied, the parenthe-
#     	ses are optional.  The body of the function is the compound command
#     	compound-command  (see  Compound  Commands above).  That command is
#     	usually a list of commands between { and }, but may be any  command
#     	listed under Compound Commands above.  compound-command is executed
#     	whenever name is specified as the name of a  simple  command.   Any
#     	redirections  (see  REDIRECTION below) specified when a function is
#     	defined are performed when the function is executed.  The exit sta-
#     	tus  of  a function definition is zero unless a syntax error occurs
#     	or a readonly function with the same  name  already  exists.   When
#     	executed,  the  exit status of a function is the exit status of the
#     	last command executed in the body.  (See FUNCTIONS below.)
# 
###########################################################

if test -n "$BASH_TRACE_STARTUP"; then echo Entering '~/.bash_functions'; fi

# Load bash completions, if not already loaded
if [ -z "$BASH_COMPLETION" ] && [ -r /etc/bash_completion ]; then
	. /etc/bash_completion
fi

function gitcd() 
{
	local root=$(git rev-parse --show-toplevel)
	if [ ${1:0:1} == "/" ]; then
		cd ${root}${1}
	else
		cd ${1}
	fi
}

#function colors_demo()
#{
#	T='gYw'   # The test text
#
#	echo -e "\nFG|BG    cur     40m     41m     42m     43m     44m     45m     46m     47m"
#
#	for FGs in '    m' '   1m' '  30m' '1;30m' '  31m' '1;31m' '  32m' '1;32m' '  33m' '1;33m' '  34m' '1;34m' '  35m' '1;35m' '  36m' '1;36m' '  37m' '1;37m'
#	do
#		FG=${FGs// /}
#		echo -en " $FGs \033[$FG  $T  "
#		for BG in 40m 41m 42m 43m 44m 45m 46m 47m
#		do
#			echo -en "$EINS \033[$FG\033[$BG  $T  \033[0m"
#		done
#		echo;
#	done
#	echo
#}

if test -n "$BASH_TRACE_STARTUP"; then echo Leaving '~/.bash_functions'; fi
