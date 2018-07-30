# If you come from bash you might have to change your $PATH.
  # export PATH=$HOME/bin:/usr/local/bin:$PATH

  # Path to your oh-my-zsh installation.
  export ZSH=/home/mao/.oh-my-zsh

  # Set name of the theme to load. Optionally, if you set this to "random"
  # it'll load a random theme each time that oh-my-zsh is loaded.
  # See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
  ZSH_THEME="robbyrussell"

  # Set list of themes to load
  # Setting this variable when ZSH_THEME=random
  # cause zsh load theme from this variable instead of
  # looking in ~/.oh-my-zsh/themes/
  # An empty array have no effect
  # ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

  # Uncomment the following line to use case-sensitive completion.
  # CASE_SENSITIVE="true"

  # Uncomment the following line to use hyphen-insensitive completion. Case
  # sensitive completion must be off. _ and - will be interchangeable.
  # HYPHEN_INSENSITIVE="true"

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
  plugins=(
  git zsh-autosuggestions zsh-syntax-highlighting 
  )

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

  # Set personal aliases, overriding those provided by oh-my-zsh libs,
  # plugins, and themes. Aliases can be placed here, though oh-my-zsh
  # users are encouraged to define aliases within the ZSH_CUSTOM folder.
  # For a full list of active aliases, run `alias`.
  #
  # Example aliases
  # alias zshconfig="mate ~/.zshrc"
  # alias ohmyzsh="mate ~/.oh-my-zsh"

  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion



  # git 最常用操作别名
  alias gs="git status"
  alias gtags="git for-each-ref --sort=taggerdate --format '%(refname) %(taggerdate)' refs/tags"
  #
  # # better git branch graph in terminal
  # # ref: http://stackoverflow.com/questions/1838873/visualizing-branch-topology-in-git/34467298#34467298
  alias glg="git log"

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

  # get size of dir or file
  function dudu {
    du -h -d 0 $1
  }

  # shorten mark name
  alias cdd='jump'


  # host
  alias hosts.config="sudo vi /etc/hosts"

  # zsh config
  alias zsh.config="vi ~/.zshrc"
  alias source.zsh="source ~/.zshrc"

  ################################################
  #
  # android
  #
  ################################################

  # android sdk
  export ANDROID_HOME=/home/mao/Android/sdk
  export PATH=${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/tools/bin:${ANDROID_HOME}/platform-tools


  ################################################
  #
  # apache2, php7, mysql, nginx
  #
  ################################################

  # apache config
  alias apache.config="sudo vi /etc/apache2/apache2.conf"
  alias vhost.config="cd /etc/apache2"

  alias apache.restart="sudo service apache2 restart"
  alias apache.stop="sudo service apache2 stop"
  alias apache.start="sudo service apache2 start"
  alias apache.status="sudo service apache2 status"


  # mysql config
  alias mysql.start="sudo service mysql start"
  alias mysql.stop="sudo service mysql stop"
  alias mysql.restart="sudo service mysql restart"
  alias mysql.status="sudo service mysql status"


  # nginx
  alias nginx.status="sudo service nginx status"
  alias nginx.start="sudo service nginx start"
  alias nginx.stop="sudo service nginx stop"
  alias nginx.restart="sudo service nginx restart"
