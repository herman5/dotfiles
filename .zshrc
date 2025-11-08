# Path to Oh My Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# ZSH Theme
ZSH_THEME="fino-time"

# Minimal plugins: git for basics, z for directory jumping (add more if essential)
plugins=(git fzf z)

# Source Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Large history settings
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history
setopt EXTENDED_HISTORY       # Save timestamps
setopt SHARE_HISTORY          # Share history across sessions
setopt HIST_IGNORE_ALL_DUPS   # Ignore duplicates
setopt HIST_SAVE_NO_DUPS      # Don't save duplicates
setopt HIST_REDUCE_BLANKS     # Remove blanks

# PATH configuration
export PATH="$HOME/bin:/usr/local/bin:$PATH"
# Pixi
export PATH="/Users/dylanherman/.pixi/bin:$PATH"

