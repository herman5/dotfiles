# Path to your oh-my-zsh installation.
export ZSH=/Users/dylanherman/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="steeef"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

## Orign bash_profile
#
# create a aliases file and source it here
#
. ~/.bash_aliases

#
# set user soft limit
#
/usr/bin/ulimit -n 10240

#
# Terminal Colors for Dark Background
#
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# PYTHONPATH
export PYTHONPATH="/usr/local/lib:/usr/local/lib64"

#
# Command History Size
# set to 0 for unlimited history
#
HISTFILESIZE=2500

# Setting PATH for Python 2.7
PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"

# Pyenv
eval "$(pyenv init -)"

# Rbenv
eval "$(rbenv init -)"

# https://github.com/aykamko/tag#installation
if (( $+commands[tag] )); then
  export TAG_SEARCH_PROG=rg
  export TAG_CMD_FMT_STRING='code --goto {{.Filename}}:{{.LineNumber}}'
  tag() { command tag "$@"; source ${TAG_ALIAS_FILE:-/tmp/tag_aliases} 2>/dev/null }
  alias rg=tag
fi

