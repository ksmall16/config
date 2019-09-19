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
  z
  zsh-syntax-highlighting
)


# ==============================================
#     POWERLINE PROMPT
# ==============================================
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE='awesome-patched'

[[ -f ~/.config/.p10k.zsh ]] && source ~/.config/.p10k.zsh


# ==============================================
#     OH-MY-ZSH
# ==============================================
export ZSH=~/.oh-my-zsh
ZSH_DISABLE_COMPFIX=true
DISABLE_UNTRACKED_FILES_DIRTY=true
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
	print "Functions not loaded!"
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
export PATH="/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/lib:/Users/n0290338/Documents/Useful_Tools:$PATH"

export SPRING_PROFILES_ACTIVE=local
export EDITOR='vim'
