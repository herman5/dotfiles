# Path to your oh-my-zsh installation.
export ZSH=/Users/dylan.herman/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="steeef"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git osx brew)

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

export PROJECTS="/Users/dylan.herman/Projects"
export MONGO_HOME="${PROJECTS}/mongodb"
export APERVITA_HOME="${PROJECTS}/apervita"
export COBALT_ENV_NAME="localdev"
export PYLIB="/usr/local/lib/python2.7/site-packages"
export PROJ="cobalt.grid.apervita_celery"

# Setting PATH for Python 2.7
PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
PATH="${MONGO_HOME}/bin:${PATH}"
export PATH="/usr/local/opt/python/libexec/bin:$PATH" # brew 1.2.5 upgrade

alias runmongo="ulimit -n 1024 && ${MONGO_HOME}/bin/mongod --dbpath ${PROJECTS}/db/store &"
alias runweb="python ${APERVITA_HOME}/web/manage.py runserver --nothreading"
alias runrabbit="rabbitmq-server"
alias runrabbitd="rabbitmq-server -detached"
alias stoprabbit="rabbitmqctl stop"
alias rabbitmon="rabbitmqctl list_queues name messages consumers"
alias runflower="celery -A $PROJ flower"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
eval "$(docker-machine env default)"
