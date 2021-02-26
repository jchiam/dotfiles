##### PATH #####

export ZSH=~/.oh-my-zsh
export DEV=$HOME/Development
export GOPATH=$HOME/go
export QSE_FRONTEND=$DEV/surveys/qse-frontend
export SSES_FRONTEND=$DEV/surveys/sses-frontend
export SURVEY_BACKEND=$DEV/surveys/backend
export SURVEY_DOCKER=$DEV/surveys/docker-survey
export OP_FRONTEND=$DEV/oneplacement/frontend
export OP_BACKEND=$DEV/oneplacement/backend
export OP_DOCKER=$DEV/oneplacement/docker-op
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
alias vpn="sudo openvpn --config ~/Development/client.ovpn --auth-user-pass --auth-retry interact"
alias ns="npm start"
alias nrl="npm run lint"
alias nrt="npm run test"
alias nrb="npm run build"
alias gupgrade="go get -u && go mod tidy"
alias brewsvs="brew services"

# PROJECT SPECIFIC #
alias dev="$DEV"
alias qsef="$QSE_FRONTEND"
alias scsf="$SSES_FRONTEND"
alias sb="$SURVEY_BACKEND"
alias sd="$SURVEY_DOCKER"
alias opf="$OP_FRONTEND"
alias opb="$OP_BACKEND"
alias opd="$OP_DOCKER"
alias psqlqse="psql -d postgresql://postgres@localhost:5432/qse"
alias psqlscs="psql -d postgresql://postgres@localhost:5432/sses"
alias psqlop="psql -d postgresql://postgres@localhost:5432/op"
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

## force myself as system's default user (removes machine name)
DEFAULT_USER="$(whoami)"

## postgres
export DATABASE_USER=postgres

## graphviz
export PATH="/usr/local/opt/graphviz/bin:$PATH"
export SCHEMA_CRAWLER_PATH=~/_schemacrawler

## direnv
eval "$(direnv hook zsh)"
