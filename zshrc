# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="terminalparty"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(battery brew django extract git node npm osx pip python ssh-agent vi-mode)

source $ZSH/oh-my-zsh.sh

# z command, courtesy of https://github.com/rupa/z
source $ZSH/../Dotfiles/lib/z.sh
function precmd() {
  # keep track of directories that are popular
  _z --add "$(pwd -P)"
}

# vim aliases
alias v='mvim -v'
alias vim='mvim -v'
alias rmv='find . -type f -regex ".*\.sw[pon]" -exec rm -f {} \;'

# git aliases
alias gd='git diff'
alias gl='git log'
alias gf='git fetch'

# node
alias ndm='nodemon'

# easy directory switching
alias ...='../..'
alias ....='../../..'
alias .....='../../../..'
