# OMZ

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
HIST_STAMPS="yyyy-mm-dd"

zstyle ':omz:plugins:alias-finder' autoload yes
zstyle ':omz:update' mode auto

plugins=(
# OS
ubuntu
# Integrations
docker
docker-compose
git
gitignore
tailscale
uv
# Common
alias-finder
colored-man-pages
command-not-found
copyfile
copypath
sudo
themes
zsh-autosuggestions
zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh


# Settings

export EDITOR="/usr/bin/micro"


# Local

if [[ -f ~/.zshrc.local ]]; then
  source ~/.zshrc.local
fi


# Aliases

alias ohmyzsh="cd ~/.oh-my-zsh"
alias zshconfig="${EDITOR} ~/.zshrc"


# PATH

export PATH="$HOME/.local/bin:$PATH"
