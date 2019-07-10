##### PATH #####

export ZSH=~/.oh-my-zsh
# export GOROOT=/usr/local/go
export GOROOT=/usr/local/opt/go/libexec
export DEV=$HOME/development
export GOPATH=$HOME/go
export QSE_FRONTEND=$DEV/qse/frontend
export QSE_BACKEND=$DEV/qse/backend
export SCS_FRONTEND=$DEV/scs/frontend
export SCS_BACKEND=$DEV/scs/backend
export SCS_MOCK=$DEV/scs/mock
export SCS_DOCKER=$DEV/scs/docker-survey
export PATH=$PATH:$GOROOT
export PATH=$PATH:$GOPATH/bin
export PATH="/usr/local/sbin:$PATH"

##### PATH #####

##### THEME #####
ZSH_THEME="agnoster"

##### ALIASES #####

# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias refresh="source ~/.zshrc"
alias ns="npm start"
alias nrl="npm run lint"
alias nrt="npm run test"
alias nrb="npm run build"
alias gupgrade="go get -u -m && go mod tidy"
alias brewsvs="brew services"
alias dockerrc='docker container prune'
alias dockerri='docker image prune'
alias dockerrv='docker volume prune'

# PROJECT SPECIFIC #
alias dev="$DEV"
alias prun="mix phoenix.server"
alias qsef="$QSE_FRONTEND"
alias qseb="$QSE_BACKEND"
alias psqlqse="psql -d postgresql://postgres@localhost:5432/qse"
alias scsf="$SCS_FRONTEND"
alias scsb="$SCS_BACKEND"
alias scsm="$SCS_MOCK"
alias scsd="$SCS_DOCKER"
alias psqlscs="psql -d postgresql://postgres@localhost:5432/survey"
alias killpsql="~/dotfiles/scripts/kill_psql.sh"
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

##### PLUGINS #####
plugins=(git)
source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

##### MISC #####
DEFAULT_USER="$USER"
eval "$(rbenv init -)"

## nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

## postgres
export DATABASE_USER=postgres

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

