##### PATH #####

export ZSH=~/.oh-my-zsh
# export GOROOT=/usr/local/go
export GOROOT=/usr/local/opt/go/libexec
export DEV=$HOME/development
export GOPATH=$HOME/go
export QSE_BASE=$DEV/qse/frontend
export PATH=$PATH:$GOROOT
export PATH=$PATH:$GOPATH

##### PATH #####

##### THEME #####
ZSH_THEME="agnoster"

##### ALIASES #####

# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias refresh="source ~/.zshrc"
alias ns="npm start"
alias nrl="npm run lint"
alias nrlt="npm run lint-test"
alias nrt="npm run test"
alias ys="yarn start"
alias yl="yarn lint"
alias redis-start="redis-server /usr/local/etc/redis.conf"
alias psql-start="postgres -D /usr/local/var/postgres"
alias brewsvs="brew services list"
alias bstart-redis="brew services start redis"
alias bstop-redis="brew services stop redis"
alias bstart-psql="brew services start postgresql"
alias bstop-psql="brew services stop postgresql"
alias dockerrc='docker container prune'
alias dockerri='docker image prune'
alias dockerrv='docker volume prune'

# PROJECT SPECIFIC #
alias dev="$DEV"
alias gorun="go build && ./${PWD##*/}"
alias gtc="go test -cover"
alias prun="mix phoenix.server"
alias godep="$GOPATH/bin/godep"
alias goose="$GOPATH/bin/goose"
alias gu="$GOPATH/bin/goose up"
alias gdo="$GOPATH/bin/goose down"
alias qsebase="$QSE_BASE"
# PROJECT SPECIFIC #

##### ALIASES #####

##### SETTINGS #####

# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"
# ZSH_CUSTOM=/path/to/new-custom-folder

##### SETTINGS #####

##### ATOM CONFIGURATION #####
atom_path="$HOME/Applications/Atom.app"
alias at="open -a '$atom_path'"
alias atom='at .'

##### PLUGINS #####
plugins=(git)
source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

##### MISC #####
DEFAULT_USER="$USER"
eval "$(rbenv init -)"
