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
brew
macos
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

export EDITOR="/opt/homebrew/bin/micro"
export SSH_AUTH_SOCK="$HOME/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"


# Local

if [[ -f ~/.zshrc.local ]]; then
  source ~/.zshrc.local
fi


# Auto Completions

eval "$(codex completion zsh)"


# Aliases

alias ohmyzsh="cd ~/.oh-my-zsh"
alias zshconfig="${EDITOR} ~/.zshrc"
alias ghosttyconfig="${EDITOR} '$HOME/Library/Application Support/com.mitchellh.ghostty/config.ghostty'"


# PATH

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/Library/pnpm/bin:$PATH" # pnpm
export PATH="/opt/homebrew/opt/python/libexec/bin:$PATH" # Python
export PATH="/opt/homebrew/share/google-cloud-sdk/bin:$PATH" # Google Cloud SDK
export PATH="$PATH:/Users/momok/.lmstudio/bin" # LM Studio CLI
export PATH="$PATH:/Applications/Obsidian.app/Contents/MacOS" # Obsidian
