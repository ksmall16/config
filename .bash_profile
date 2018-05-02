#----- 1. RETURN IF NOT INTERACTIVE -----------#
# prevents overwritten commands when in a script
[ -z "$PS1" ] && return

#----- 2. LOAD SCRIPTS ------------------------#

WORK_COMPUTER=LIBP45P-18293WL

# java 7/8/9 toggle
if [ -f $HOME/.config/.javatoggle ]; then
    . $HOME/.config/.javatoggle
else
    echo 'Java toggle not loaded!'
fi

# aliases
if [ -f $HOME/.config/.aliasconfig ]; then
    . $HOME/.config/.aliasconfig
else
    echo 'Aliases not loaded!'
fi

# functions
if [ -f $HOME/.config/.functions ]; then
    . $HOME/.config/.functions
else
    echo 'Functions not loaded!'
fi

# bash completions
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
else
    echo 'Bash completions not loaded!'
fi

# maven config
if [ -f $HOME/.config/.mavenconfig ]; then
    . $HOME/.config/.mavenconfig
else
    echo 'Maven config not loaded!'
fi

# import git prompt
if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
    source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
else
    echo 'Git prompt not loaded!'
fi

# machine-specific config
if [ "$HOSTNAME" = $WORK_COMPUTER ]; then
  . $HOME/.config/.work_config
else
  echo 'Work config not loaded!'
fi

# npm completioin: https://github.com/Jephuff/npm-bash-completion
if [ "$HOSTNAME" = $WORK_COMPUTER ]; then
  PATH_TO_NPM_COMPLETION="/Users/n0290338/node_modules/npm-completion"
  source $PATH_TO_NPM_COMPLETION/npm-completion.sh
else
  echo 'NPM completion not loaded!'
fi

welcomeMessage

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
