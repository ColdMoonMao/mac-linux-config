# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
#TERM="xterm-256color"
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
plugins=(brew bower gem node npm nyan osx web-search zsh-autosuggestions zsh-syntax-highlighting)
#plugins=(zsh-syntax-highlighting)
#source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# User configuration

export PATH="$HOME/.bin:$HOME/.composer/vendor/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"


################################################
# Anaconda3 path  python的多版本环境
export PATH="/Users/mao/anaconda3/bin:/usr/local/bin/python3:$PATH"

################################################

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
# export HOMEBREW_GITHUB_API_TOKEN=

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

# alias php.config="sudo vi /usr/local/etc/php/5.6/php.ini"
# alias php.config="sudo vi /etc/php.ini"
# alias php.config="sudo vi /usr/local/etc/php/7.1/php.ini"

# apache2
alias apache.config="sudo vi /etc/apache2/httpd.conf"
alias vhosts.config="sudo vi /etc/apache2/extra/httpd-vhosts.conf"
alias apache.start="sudo launchctl load -w /System/Library/LaunchDaemons/org.apache.httpd.plist"
alias apache.stop="sudo launchctl unload -w /System/Library/LaunchDaemons/org.apache.httpd.plist"
alias apache.restart="apache.stop && apache.start"

# mysql
alias mysql.config="sudo vi /usr/local/etc/my.cnf"
alias mysql.restart="brew services restart mysql"
alias mysql.start="brew services start mysql"
alias mysql.stop="brew services stop mysql"
alias mysql.status="mysql.server status"

# nginx
# alias ng.config='vi /usr/local/etc/nginx/nginx.conf'
# alias ng.dir='subl /usr/local/etc/nginx'
# alias ng.test='sudo nginx -t'
# alias ng.start='sudo nginx'
# alias ng.stop='sudo nginx -s stop'
# alias ng.restart='sudo nginx -s reload'
# alias nginx.log="cd /usr/local/var/log"

# nginx homebrew way
alias ng.config='vi /usr/local/etc/nginx/nginx.conf'
alias ng.dir='subl /usr/local/etc/nginx'
alias ng.test='sudo nginx -t'
alias ng.start='sudo brew services start nginx'
alias ng.stop='sudo brew services stop nginx'
alias ng.restart='sudo brew services restart nginx'
alias nginx.log="cd /usr/local/var/log"

# php 7.1
# alias php.config="sudo vi /usr/local/etc/php/7.1/php.ini"
# alias fpm.dir="subl /usr/local/etc/php/7.1"
# alias fpm.start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.php71.plist"
# alias fpm.stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.php71.plist"
# alias fpm.restart='fpm.stop && fpm.start'

# php homebrew way
alias php.config="sudo vi /usr/local/etc/php/7.1/php.ini"
alias fpm.dir="subl /usr/local/etc/php/7.1"
alias fpm.start="brew services start homebrew/php/php71"
alias fpm.stop="brew services stop homebrew/php/php71"
alias fpm.restart='brew services restart homebrew/php/php71'

# monogodb 
alias mongodb.start="brew services start mongodb"
alias mongodb.stop="brew services stop mongodb"
alias mongodb.restart="brew services restart mongodb"

alias mongodb.startF="mongod --config /usr/local/etc/mongod.conf"


################################################
#
# git
#
################################################

# git 最常用操作别名
alias gs="git status"
alias gtags="git for-each-ref --sort=taggerdate --format '%(refname) %(taggerdate)' refs/tags"
alias gp="git pull"
alias ga="git am"
alias gcm="git checkout master"
alias gc="git checkout "
alias gfp="git format-patch -1 "
alias gpf="git push mao -f"



# better git branch graph in terminal
# ref: http://stackoverflow.com/questions/1838873/visualizing-branch-topology-in-git/34467298#34467298
alias glg="git log"
alias glg1="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias glg2="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias glg3="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset) %C(bold cyan)(committed: %cD)%C(reset) %C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset)%n''          %C(dim white)- %an <%ae> %C(reset) %C(dim white)(committer: %cn <%ce>)%C(reset)' --all"




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

alias mv="mv -i"

alias rm="rm -i"
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


#################################################
#
# nvm
#
################################################

#export NVM_DIR="$HOME/.nvm"
#  . "/usr/local/opt/nvm/nvm.sh"

###############################################
#
# android
#
################################################

# android sdk
export ANDROID_HOME=~/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/tools/bin:~/Library/Android/sdk/platform-tools
alias avd.start='${ANDROID_HOME}/emulator/emulator -avd Nexus_5_6.0'

# export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_112.jdk/Contents/Home"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home"

# gradle 
 # export PATH="/Applications/Android Studio.app/Contents/gradle/gradle-3.5/bin:$PATH"


# sign,arm, crosswalk
alias ion.sign.a='jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore ~/keystores/bluestoneapp-release-key.keystore "platforms/android/build/outputs/apk/android-armv7-release-unsigned.apk" "bluestoneapp" -storepass stone123 -keypass stone123'

# align,arm, crosswalk
alias ion.align.a='~/Library/Android/sdk/build-tools/26.0.0/zipalign -v 4 "platforms/android/build/outputs/apk/android-armv7-release-unsigned.apk" "genecast-release.apk"'

alias ion.sa="rm -f genecast-release.apk && ion.sign.a && ion.align.a"

# sign,x86 , crosswalk
alias ion.sign.a.x86='jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore ~/keystores/bluestoneapp-release-key.keystore "platforms/android/build/outputs/apk/android-x86-release-unsigned.apk" "bluestoneapp" -storepass stone123 -keypass stone123'

# align,x86, crosswalk
alias ion.align.a.x86='~/Library/Android/sdk/build-tools/26.0.0/zipalign -v 4 "platforms/android/build/outputs/apk/android-x86-release-unsigned.apk" "genecast-release.apk"'

alias ion.sa.x86="rm -f genecast-release.apk && ion.sign.a.x86 && ion.align.a.x86"


# sign,arm , without crosswalk
alias ion.sign.a.def='jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore ~/keystores/bluestoneapp-release-key.keystore "platforms/android/build/outputs/apk/android-release-unsigned.apk" "bluestoneapp" -storepass stone123 -keypass stone123'

# align,arm, without crosswalk
alias ion.align.a.def='~/Library/Android/sdk/build-tools/26.0.0/zipalign -v 4 "platforms/android/build/outputs/apk/android-release-unsigned.apk" "genecast-release.apk"'

alias ion.sa.def="rm -f genecast-release.apk && ion.sign.a.def && ion.align.a.def"



# npm 
# custom npm source

alias mnpm="npm --registry=https://registry.npm.taobao.org \
--cache=$HOME/.npm/.cache/cnpm \
--disturl=https://npm.taobao.org/dist \
--userconfig=$HOME/.cnpmrc"



# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# export PATH="/usr/local/opt/node@6/bin:$PATH"

#aria2
alias aria.start='aria2c --conf-path="/Users/mao/.aria2/aria2.conf" -D'

# cloud-torrent --help

#  Usage: cloud-torrent [options]

  # Options:
  # --title, -t        Title of this instance (default Cloud Torrent, env TITLE)
  # --port, -p         Listening port (default 3000, env PORT)
  # --host, -h         Listening interface (default all)
  # --auth, -a         Optional basic auth in form 'user:password' (env AUTH)
  # --config-path, -c  Configuration file path (default cloud-torrent.json)
  # --key-path, -k     TLS Key file path
  # --cert-path, -r    TLS Certicate file path
  # --log, -l          Enable request logging
  # --open, -o         Open now with your default browser
  # --help
  # --version, -v

  # Version:
  #   0.X.Y

  # Read more:
  #   https://github.com/jpillora/cloud-torrent

  alias cloud.start='cloud-torrent -o'

  # 登录我的腾讯云服务器
  alias loginmyserver='ssh -i ~/.ssh/tecent_ecs ubuntu@118.25.46.49'


###############################################
## 显示所有文件
  alias showAllFile='defaults write com.apple.finder AppleShowAllFiles -boolean false;killall Finder'

## 隐藏所有文件
  alias hideAllFile='defaults write com.apple.finder AppleShowAllFiles -boolean false;killall Finder'
###############################################


###############################################
# @section start
# # zsh Theme  
#
###############################################
POWERLEVEL9K_INSTALLATION_PATH="/usr/local/opt/powerlevel9k@0.6.3/"

source /usr/local/opt/powerlevel9k@0.6.3/powerlevel9k.zsh-theme

ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_HOME_ICON="\ufb32"
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON="\ue5ff"
POWERLEVEL9K_ETC_ICON="\uE5FC"
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR="\ue0c4"
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{014}└%F{cyan}\uf260%f %F{014}\ufb1f%f "
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# custom_at_home 和 custom_detect_context 都是自定义的组件，可以删除这两个字段来关闭组件显示
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status dir custom_at_home custom_detect_context vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_COLOR_SCHEME="dark"
POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_STATUS_OK=false
# customize theme
POWERLEVEL9K_DIR_HOME_BACKGROUND="023"
POWERLEVEL9K_DIR_HOME_FOREGROUND="010"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="023"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="010"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="023"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="010"
# POWERLEVEL9K_STATUS_OK_BACKGROUND="232"
#===============================
# self defined segments
#===============================
at_home() {
  [ "$(pwd)" = $HOME ] && echo -n "Going Home"
}
POWERLEVEL9K_CUSTOM_AT_HOME="at_home"
POWERLEVEL9K_CUSTOM_AT_HOME_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_AT_HOME_BACKGROUND="cyan"

SUFFIX_MAP=("dockerfile" "node_modules" ".vue" ".py")
ICON_MAP=(
  "\033[34m\uE7B0"
  "\033[32m\uF898"
  "\033[32m\uFD42"
  "\033[35m\uF81F"
)
# 检测当前目录下的 docker、python、vue 等源文件，并显示图标
detect_context() {
  local ls_result=$(ls)
  local result=""

  for ((i = 1; i <= $#SUFFIX_MAP; i++)); do
    if echo $ls_result | grep -Ei "${SUFFIX_MAP[$i]}\$" >/dev/null; then
      if [ -z $result ]; then
        result="${ICON_MAP[$i]}"
      else
        result="$result  ${ICON_MAP[$i]}"
      fi
    fi
  done

  echo -en $result
}
POWERLEVEL9K_CUSTOM_DETECT_CONTEXT="detect_context"
POWERLEVEL9K_CUSTOM_DETECT_CONTEXT_FOREGROUND='white'
POWERLEVEL9K_CUSTOM_DETECT_CONTEXT_BACKGROUND='232'

###############################################
# @section end
# # zsh Theme  
#
############################################### 
  
