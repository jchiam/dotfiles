##### PATH #####

export ZSH=/Users/jchiam/.oh-my-zsh
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export SC_MOBILE=$HOME/development/sc_mobile
export ATA_BASE=$HOME/development/scm-atas
export ATA_GO=$GOPATH/src/github.estl.moe/SC-Mobile/atas.git/ata-api
export PATH=$PATH:$SC_MOBILE
export PATH=$PATH:$ATA_BASE
export PATH=$PATH:$ATA_GO
export PATH=$PATH:$GOROOT
export PATH=$PATH:$GOPATH

##### PATH #####

##### THEME #####
ZSH_THEME="avit"

##### ALIASES #####

# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
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

##### PLUGINS #####
plugins=(git)
source $ZSH/oh-my-zsh.sh

##### MISC #####
eval "$(rbenv init -)"
