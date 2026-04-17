##### ENVIRONMENT #####

export ZSH=~/.oh-my-zsh
export DEV=$HOME/Development

##### ENVIRONMENT #####

##### PATH #####

export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

##### PATH #####

##### OH-MY-ZSH #####

ZSH_THEME="agnoster"

# Optional settings (uncomment to enable)
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

# zsh-nvm: https://github.com/lukechilds/zsh-nvm#as-an-oh-my-zsh-custom-plugin
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
  zsh-nvm
)

source $ZSH/oh-my-zsh.sh

##### OH-MY-ZSH #####

##### ALIASES #####

alias refresh="source ~/.zshrc"
alias brew="arch -arm64 brew"
alias brewsvs="brew services"
alias ns="npm start"
alias nrl="npm run lint"
alias nrt="npm run test"
alias nrb="npm run build"

# Project
alias dev="$DEV"
alias killpsql="~/dotfiles/scripts/kill_psql.sh"

##### ALIASES #####

##### TOOLS #####

## Remove machine name from prompt
DEFAULT_USER="$(whoami)"

## ssh-agent
eval "$(ssh-agent)"

## gvm (Go Version Manager)
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

## direnv
eval "$(direnv hook zsh)"

## GPG
export GPG_TTY=$(tty)

##### TOOLS #####

##### APP CONFIG #####

## postgres
export DATABASE_USER=postgres

## docker
export DOCKER_DEFAULT_PLATFORM=linux/amd64

## Cloudflare WARP CA certificates
export NODE_EXTRA_CA_CERTS="${HOME}/.config/cloudflare/Cloudflare_CA.pem"
export SSL_CERT_FILE="${HOME}/.config/cloudflare/combined-bundle.pem"
export REQUESTS_CA_BUNDLE="${HOME}/.config/cloudflare/combined-bundle.pem"
export AWS_CA_BUNDLE="${HOME}/.config/cloudflare/combined-bundle.pem"

##### APP CONFIG #####
