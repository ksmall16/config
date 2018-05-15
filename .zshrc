#----- 1. RETURN IF NOT INTERACTIVE -----------#
# prevents overwritten commands when in a script
[ -z "$PS1" ] && return

# ---------- POWERLINE -------------#

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  os_icon dir vcs
)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
 status time
)
# prompt
POWERLEVEL9K_PROMPT_ON_NEWLINE=false
POWERLEVEL9K_MODE='nerdfont-complete'
# git prompt format
POWERLEVEL9K_VCS_GIT_ICON=''
POWERLEVEL9K_VCS_STAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%{%F{249}%}\u250f"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%F{249}%}\u2517%{%F{default}%}❯ "
POWERLEVEL9K_TIME_FORMAT="%D{\uf017 %I:%M \uf073 %m.%d.%y}"
# battery
POWERLEVEL9K_BATTERY_CHARGING='yellow'
POWERLEVEL9K_BATTERY_CHARGED='green'
POWERLEVEL9K_BATTERY_DISCONNECTED='$DEFAULT_COLOR'
POWERLEVEL9K_BATTERY_LOW_THRESHOLD='10'
POWERLEVEL9K_BATTERY_LOW_COLOR='red'
POWERLEVEL9K_BATTERY_ICON='\uf1e6 '
export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

#---------- LOAD SCRIPTS ----------#

WORK_COMPUTER=LIBP45P-18293WL
HOME_COMPUTER=Home-MBP.local

# java 7/8/9 toggle
if [ -f ~/.config/.javatoggle ]; then
  source ~/.config/.javatoggle
else
  print "Java toggle not loaded!"
fi

# aliases
if [ -f ~/.config/.aliasconfig ]; then
  source ~/.config/.aliasconfig
else
  print "Aliases not loaded!"
fi

# functions
if [ -f ~/.config/.functions ]; then
	source ~/.config/.functions
else
	print "Functionsi not loaded!"
fi

# maven config
if [ -f ~/.config/.mavenconfig ]; then
  source ~/.config/.mavenconfig
else
  print "Maven config not loaded!"
fi

# machine-specific config
if [ "$HOST" = $WORK_COMPUTER ]; then
  source ~/.config/.work_config
elif [ "$HOST" = $HOME_COMPUTER ]; then
  source ~/.config/.home_config
else
  print 'Work config not loaded!'
  print $HOST
fi

welcomeMessage

#----------------------------------#

COMPLETION_WAITING_DOTS="true"  # Display red dots while waiting for completion.

plugins=( git svn brew osx node npm z bower extract zsh-syntax-highlighting )

export LD_LIBRARY_PATH=/usr/local/apr/lib:$LD_LIBRARY_PATH
PATH="/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/lib:/Users/n0290338/Documents/Useful_Tools:$PATH"
export PATH

export SPRING_PROFILES_ACTIVE=local
export EDITOR='vim'
