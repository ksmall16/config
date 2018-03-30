#---------- LOAD SCRIPTS ----------#
# proxy
export http_proxy=http://localhost:3128
export https_proxy=http://localhost:3128
print "(1) Proxies loaded!"

# java toggle
if [ -f ~/.config/.javatoggle ]; then
  source ~/.config/.javatoggle
  print "(2) Java 7/8/9 loaded!"
fi

# aliases
if [ -f ~/.config/.aliasconfig ]; then 
  source ~/.config/.aliasconfig
  print "(3) Aliases loaded!"
fi

# functions
if [ -f ~/.config/.functions ]; then
	source ~/.config/.functions
	print "(4) Functions loaded!"
fi

# maven
if [ -f ~/.mavenconfig ]; then
  source ~/.config/.mavenconfig
  print "(5) Maven loaded!"
fi

print "Load complete!"

#----------------------------------#

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH=/Users/n0290338/.oh-my-zsh
ZSH_THEME="awesomepanda"

# HYPHEN_INSENSITIVE="true"
# ENABLE_CORRECTION="true"  # Enable command auto-correction.

COMPLETION_WAITING_DOTS="true"  # Display red dots while waiting for completion.

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=( git svn brew osx node npm z bower extract )

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

export EDITOR='vim'

PATH_TO_NPM_COMPLETION="/Users/n0290338/node_modules/npm-completion"
source $PATH_TO_NPM_COMPLETION/npm-completion.sh

source  ~/powerlevel9k/powerlevel9k.zsh-theme
