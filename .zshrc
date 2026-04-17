##### PATH #####

export ZSH=~/.oh-my-zsh
export DEV=$HOME/Development
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/opt/homebrew/bin

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
alias brew="arch -arm64 brew"
alias brewsvs="brew services"

# PROJECT SPECIFIC #
alias dev="$DEV"
alias psqlop="psql -d postgresql://postgres@localhost:5432/op"
alias psqloptest="psql -d postgresql://postgres@localhost:5432/op_test"
alias psqlopdis="psql -d postgresql://postgres@localhost:5432/op_dis"
alias killpsql="~/dotfiles/scripts/kill_psql.sh"
# PROJECT SPECIFIC #

##### ALIASES #####

##### SETTINGS #####

# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=7
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

##### PLUGINS #####

##### MISC #####

## force myself as system's default user (removes machine name)
DEFAULT_USER="$(whoami)"

## ssh-agent
eval "$(ssh-agent)"

## postgres
export DATABASE_USER=postgres

## graphviz
export PATH="/usr/local/opt/graphviz/bin:$PATH"
export SCHEMA_CRAWLER_PATH=~/_schemacrawler

## direnv
eval "$(direnv hook zsh)"

## docker
export DOCKER_DEFAULT_PLATFORM=linux/amd64

## Cloudflare Certs (SEED)
export NODE_EXTRA_CA_CERTS="${HOME}/.config/.cloudflare/Cloudflare_CA.pem"

[[ -s "/Users/jchiam/.gvm/scripts/gvm" ]] && source "/Users/jchiam/.gvm/scripts/gvm"

export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"

export GPG_TTY=$(tty)

# Added by Antigravity
export PATH="/Users/jchiam/.antigravity/antigravity/bin:$PATH"


export PATH="$HOME/.local/bin:$PATH"
export SSL_CERT_FILE="${HOME}/.config/cloudflare/combined-bundle.pem"
export NODE_EXTRA_CA_CERTS="${HOME}/.config/cloudflare/Cloudflare_CA.pem"
export REQUESTS_CA_BUNDLE="${HOME}/.config/cloudflare/combined-bundle.pem"
export AWS_CA_BUNDLE="${HOME}/.config/cloudflare/combined-bundle.pem"

# Cloudflare WARP CA Certificate Configuration
# Added by GT Developer CLI
export NODE_EXTRA_CA_CERTS="/Users/jchiam/.config/cloudflare/Cloudflare_CA.pem"
export SSL_CERT_FILE="/Users/jchiam/.config/cloudflare/combined-bundle.pem"
export REQUESTS_CA_BUNDLE="/Users/jchiam/.config/cloudflare/combined-bundle.pem"
export AWS_CA_BUNDLE="/Users/jchiam/.config/cloudflare/combined-bundle.pem"
# End Cloudflare WARP CA Certificate Configuration
