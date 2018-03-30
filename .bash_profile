#----- 1. RETURN IF NOT INTERACTIVE -----------#
[ -z "$PS1" ] && return

#----- 2. LOAD SCRIPTS ------------------------#

# java 7/8/9 toggle
if [ -f $HOME/.config/.javatoggle ]; then
    . $HOME/.config/.javatoggle
    echo '(1) Java 7/8/9 loaded!'
fi

# aliases
if [ -f $HOME/.config/.aliasconfig ]; then
    . $HOME/.config/.aliasconfig
    echo '(2) Aliases loaded!'
fi

# functions
if [ -f $HOME/.config/.functions ]; then
    . $HOME/.config/.functions
    echo '(3) Functions loaded!'
fi

# bash completions
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
    echo '(4) Bash completions loaded!'
fi

# RabbitMQ bash completions
if [ -f $HOME/.config/.rabbit_completion ]; then
    . $HOME/.config/.rabbit_completion
    # echo '(6) RabbitMQ completion loaded!'
fi

# maven config
if [ -f $HOME/.config/.mavenconfig ]; then
    . $HOME/.config/.mavenconfig
    # echo '(7) Maven config loaded!'
fi

# import git prompt
if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
    source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
		echo '(5) Git prompt loaded!'
fi

#-----------------------------------------------#

#----- 3. Customized Console Settings ----------#

# git repo prompt
GIT_PROMPT_ONLY_IN_REPO=1
GIT_PROMPT_START="\[\033[1;36m\]\@\[\e[00m\] \[\033[0;35m\]$\[\e[00m\] \[\033[00;96m\]\w\[\033[00;96m\]"
GIT_PROMPT_END="\n\[\033[0;95m\]>\[\e[00m\] "

# non-git prompt
export PS1="\[\033[1;36m\]\@\[\e[00m\] \[\033[1;33m\]$\[\e[00m\] \[\033[00;96m\]\w\[\033[00;96m\] \n\[\033[1;33m\]>\[\e[00m\] "

export CLICOLOR=1
#-----------------------------------------------#

#----- 3. $PATH Settings -----------------------#
export LD_LIBRARY_PATH=/usr/local/apr/lib:$LD_LIBRARY_PATH
PATH="/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/lib:/Users/n0290338/Documents/Useful_Tools:$PATH"
export MANPATH=/opt/local/share/man:$MANPATH
export PATH
#-----------------------------------------------#

#----- 4. Other Settings -----------------------#

export SPRING_PROFILES_ACTIVE=local
export EDITOR='gvim -v'
export VISUAL='gvim -v'

 # added for npm-completion https://github.com/Jephuff/npm-bash-completion
PATH_TO_NPM_COMPLETION="/Users/n0290338/node_modules/npm-completion"
source $PATH_TO_NPM_COMPLETION/npm-completion.sh
