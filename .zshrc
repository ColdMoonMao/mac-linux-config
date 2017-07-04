# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

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
plugins=(brew bower gem node npm osx web-search)

# User configuration

export PATH="/Users/mao/.bin:/Users/mao/.composer/vendor/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#

# bond

################################################
#
# zsh
#
################################################

# zsh config
alias zsh.config="vi ~/.zshrc"
alias source.zsh="source ~/.zshrc"


################################################
#
# homebrew
#
################################################

# github api token for homebrew
# export HOMEBREW_GITHUB_API_TOKEN=my token ^_^

# homebrew bottle 源, 伟大的七牛去提供服务
# export HOMEBREW_BOTTLE_DOMAIN=http://7xkcej.dl1.z0.glb.clouddn.com


################################################
#
# vim
#
################################################

# vim 
alias vi.config="vi ~/.vim_runtime/my_configs.vim"
alias vim.config="vi ~/.vim_runtime/my_configs.vim"


################################################
#
# iStats
#
################################################

# istats
alias sys="istats cpu"
alias syst="istats"


################################################
#
# hosts, apache2, php, mysql, nginx
#
################################################

# hosts
alias hosts.config="sudo vi /etc/hosts" 

alias php.config="sudo vi /etc/php.ini"

# apache2
alias apache.config="sudo vi /etc/apache2/httpd.conf"
# alias apache.config="sudo vi /usr/local/etc/apache2/2.4/httpd.conf"
alias vhosts.config="sudo vi /etc/apache2/extra/httpd-vhosts.conf"
# alias vhosts.config="sudo vi /usr/local/etc/apache2/2.4/extra/httpd-vhosts.conf"
alias apache.start="sudo launchctl load -w /System/Library/LaunchDaemons/org.apache.httpd.plist"
alias apache.stop="sudo launchctl unload -w /System/Library/LaunchDaemons/org.apache.httpd.plist"
alias apache.restart="apache.stop && apache.start"

# mysql
alias mysql.config="sudo vi /etc/my.conf"
alias mysql.restart="mysql.server restart"
alias mysql.start="mysql.server start"
alias mysql.stop="mysql.server stop"
alias mysql.status="mysql.server status"

# php-fpm
alias fpm.start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.php56.plist"
alias fpm.stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.php56.plist"
alias fpm.restart='fpm.stop && fpm.start'


################################################
#
# git
#
################################################

# git 最常用操作别名
alias gs="git status"
alias glg="git log"

################################################
#
# android
#
################################################

# android sdk
export ANDROID_HOME=~/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools:~/Library/Android/sdk/platform-tools


################################################
#
# misc
#
################################################

# better ls color
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# display a slash / after directores
alias ls="ls -FG"

# quick jump to often used directories 
# http://jeroenjanssens.com/2013/08/16/quickly-navigate-your-filesystem-from-the-command-line.html
export MARKPATH=$HOME/.marks
function jump { 
    cd -P "$MARKPATH/$1" 2>/dev/null || echo "No such mark: $1"
    pwd
}
function mark { 
    mkdir -p "$MARKPATH"; ln -s "$(pwd)" "$MARKPATH/$1"
}
function unmark { 
    rm -i "$MARKPATH/$1"
}
function marks {
    \ls -l "$MARKPATH" | tail -n +2 | sed 's/  / /g' | cut -d' ' -f9- | awk -F ' -> ' '{printf "%-10s -> %s\n", $1, $2}'
}

# tab completion for jump and unmark
function _completemarks {
  reply=($(ls $MARKPATH))
}
compctl -K _completemarks jump
compctl -K _completemarks unmark

# get size of dir or file
function dudu {
    du -h -d 0 $1
}

# tab completion for dudu
function _completedudu {
    reply=($(ls .))
}
compctl -K _completedudu dudu

# shorten mark name
alias cdd='jump'

# sourcetree alias
alias st='open -a SourceTree'

# sublime alias
# alias subl='/Applications/SublimeText.app/Contents/SharedSupport/bin/subl'

# atom alias
# alias atom='/Applications/Atom.app/Contents/MacOS/Atom'

# vscode alias
# alias code='/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
