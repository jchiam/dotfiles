##### PATH #####

export ZSH=~/.oh-my-zsh
# export GOROOT=/usr/local/go
export GOROOT=/usr/local/opt/go/libexec
export DEV=$HOME/development
export GOPATH=$HOME/go
export QSE_BASE=$DEV/qse/frontend
export QSE_GO=$GOPATH/src/github.estl.moe/qse/backend.git
export PATH=$PATH:$GOROOT
export PATH=$PATH:$GOPATH/bin

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
alias brewsvs="brew services"
alias dockerrc='docker container prune'
alias dockerri='docker image prune'
alias dockerrv='docker volume prune'

# PROJECT SPECIFIC #
alias dev="$DEV"
alias gorun="go build && ./${PWD##*/}"
alias gtc="go test -cover"
alias prun="mix phoenix.server"
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
DEFAULT_USER="$USER"
eval "$(rbenv init -)"

## nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
# nvm use --delete-prefix v9.11.1

## postgres
export DATABASE_USER=postgres

