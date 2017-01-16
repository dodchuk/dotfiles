# Path to your oh-my-zsh installation.
export ZSH=/Users/dodchuk/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="_amuse"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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
plugins=(git)

# User configuration

#export PATH="/Users/dodchuk/.rvm/gems/ruby-2.2.2/bin:/Users/dodchuk/.rvm/gems/ruby-2.2.2@global/bin:/Users/dodchuk/.rvm/rubies/ruby-2.2.2/bin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/dodchuk/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
export SSH_KEY_PATH="~/.ssh/id_rsa"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# zsh
alias ohmyzsh="atom ~/.oh-my-zsh"
alias zshconfig="atom ~/.zshrc"

# ask it politely
alias please="sudo"

# redis
alias redstart="redis-server /usr/local/etc/redis.conf"                                       # redis start
alias redstop="echo 'Shutting down Redis server...'; redis-cli -h 127.0.0.1 -p 6379 shutdown" # redis stop

# rabbitmq
alias rabbit="/usr/local/sbin/rabbitmq-server"

# python
alias servethis="python -c 'import SimpleHTTPServer; SimpleHTTPServer.test()'"

# workerman
alias workerm="sudo ./workerman-2 -config config.json"

# memcached
alias memcached-start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist"
alias memcached-stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist"
alias memcached-restart="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist;launchctl load ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist"

# git addicted
alias pu="git pull"
alias puh="git push origin HEAD"
alias pupuh="pu && puh"
alias pupud="pu && puh && cap staging deploy"
alias st="git status"
alias co="git checkout"
alias ci="git commit -m"
alias cim="git commit -a -m"
alias ad="git add"
alias di="git diff"
alias mg="git merge"
alias cr="git push origin "
alias cu="git reset --soft HEAD~1"

# listing directories
alias l='ls -la'              # detailed list, show hidden
alias lh='ls -lah'            # detailed list, show hidden, human filesizes
alias ll='ls -l'              # detailed list, no hidden
alias ls.='ls -d .[^.]*'      # regular list, only hidden
alias ll.='ls -ld .[^.]*'     # detailed list, only hidden
alias lsd='ls -d *(-/DN)'     # regular list, only directories
alias lld='ls -ld *(-/DN)'    # detailed list, only directories
alias sl=ls                   # accidental misspelling
alias cd..='cd ..'            # accidental misspelling

# mac helpers
alias show_hidden="defaults write com.apple.Finder AppleShowAllFiles YES && killall Finder"
alias hide_hidden="defaults write com.apple.Finder AppleShowAllFiles NO && killall Finder"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
