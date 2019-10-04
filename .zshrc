##### PATH #####

export ZSH=~/.oh-my-zsh
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
# zsh-nvm plugin:  https://github.com/lukechilds/zsh-nvm#as-an-oh-my-zsh-custom-plugin
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
  zsh-nvm
)
source $ZSH/oh-my-zsh.sh

##### MISC #####

## postgres
export DATABASE_USER=postgres

## graphviz
export PATH="/usr/local/opt/graphviz/bin:$PATH"
export SCHEMA_CRAWLER_PATH=~/_schemacrawler

## direnv
eval "$(direnv hook zsh)"

