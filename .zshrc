# ==============================================
#     RETURN IF NOT INTERACTIVE: use
#     if you override builtin commands
# ==============================================
[ -z "$PS1" ] && return



# ==============================================
#     PLUGINS
# ==============================================
plugins=(
  brew
  git
  mvn
  node
  npm
  osx
  svn
  z
  zsh-syntax-highlighting
)


# ==============================================
#     POWERLINE PROMPT
# ==============================================
ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_PROMPT_ON_NEWLINE=false
POWERLEVEL9K_MODE='nerdfont-complete'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  os_icon
  root_indicator
  dir
  vcs
)

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
 status
 time
)

POWERLEVEL9K_VCS_GIT_ICON=''
POWERLEVEL9K_VCS_STAGED_ICON='\u00b1'

POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'

POWERLEVEL9K_TIME_FORMAT="%D{\uf017 %I:%M \uf073 %m/%d}"


# ==============================================
#     OH-MY-ZSH
# ==============================================
ZSH_DISABLE_COMPFIX=true
export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh


# ==============================================
#     LOAD SCRIPTS
# ==============================================
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
  print 'Machine-specific config not loaded!'
  print $HOST
fi

COMPLETION_WAITING_DOTS="true"  # Display red dots while waiting for completion.


# ==============================================
#     HOOK FUNCTIONS
# ==============================================
chpwd() { ls }

# ==============================================
#     PATH VARIABLES & OTHER SETTINGS
# ==============================================
export LD_LIBRARY_PATH=/usr/local/apr/lib:$LD_LIBRARY_PATH
PATH="/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/lib:/Users/n0290338/Documents/Useful_Tools:$PATH"
export PATH

export SPRING_PROFILES_ACTIVE=local
export EDITOR='vim'
