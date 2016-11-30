##### PATH #####

export ZSH=~/.oh-my-zsh
# export GOROOT=/usr/local/go
export GOROOT=/usr/local/opt/go/libexec
export DEV=$HOME/development
export GOPATH=$HOME/go
export SC_MOBILE=$DEV/sc_mobile
export ATA_BASE=$DEV/scm-atas
export ATA_GO=$GOPATH/src/github.estl.moe/SC-Mobile/atas.git/ata-api
export ATA_APIGW=$GOPATH/src/github.estl.moe/SC-Mobile/atas.git/apigw
export QSE_BASE=$DEV/qse-prototype
export QSE_GO=$GOPATH/src/github.estl.moe/QSE-Survey/qse-prototype.git/qse-api
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
alias redis-start="redis-server /usr/local/etc/redis.conf"
alias psql-start="postgres -D /usr/local/var/postgres"
alias brewsvs="brew services list"
alias bstart-redis="brew services start redis"
alias bstop-redis="brew services stop redis"
alias bstart-psql="brew services start postgresql"
alias bstop-psql="brew services stop postgresql"

# PROJECT SPECIFIC #
alias dev="$DEV"
alias gorun="go build && ./${PWD##*/}"
alias scm="$SC_MOBILE"
alias atabase="$ATA_BASE"
alias atago="$ATA_GO"
alias ataapigw="$ATA_APIGW"
alias qsebase="$QSE_BASE"
alias qsego="$QSE_GO"
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
DEFAULT_USER="jchiam"
eval "$(rbenv init -)"

