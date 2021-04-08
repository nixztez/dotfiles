#
#                    ██
#                   ░██
#     ██████  ██████░██      ██████  █████
#    ░░░░██  ██░░░░ ░██████ ░░██░░█ ██░░░██
#       ██  ░░█████ ░██░░░██ ░██ ░ ░██  ░░
#  ██  ██    ░░░░░██░██  ░██ ░██   ░██   ██
# ░██ ██████ ██████ ░██  ░██░███   ░░█████
# ░░ ░░░░░░ ░░░░░░  ░░   ░░ ░░░     ░░░░░
#

# General
HISTFILE=~/.zsh_history
HISTSIZE=3000
SAVEHIST=3000
autoload -U compinit && compinit
setopt promptsubst
set -o emacs

# Aliases
alias c='clear'
alias zshrefresh='source ~/.config/zsh/.zshrc'
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    alias ls='ls --color=auto'
elif [[ "$OSTYPE" == "darwin"* ]]; then
    alias ls='ls -G'
fi

# Exports
export VISUAL=vim
export EDITOR="$VISUAL"
export LANG=en_US.UTF-8
export LC_CTYPE=sv_SE.UTF-8

# Load external configuration
for f in $HOME/.config/zsh/*?.zsh; do
    . "$f"
done

# Use rationalise-dot function
zle -N rationalise-dot
bindkey . rationalise-dot
bindkey -M isearch . self-insert

# Automatically install zplugin
if [ ! -d "$HOME/.zplugin/bin" ]; then
    mkdir -p ~/.zplugin
    git clone https://github.com/zdharma/zplugin.git ~/.zplugin/bin
fi

# Load zplugin - Plugin manager
source "$HOME/.zplugin/bin/zplugin.zsh"

## Load plugins
zplugin ice pick"async.zsh" src"pure.zsh"
zplugin light sindresorhus/pure

zplugin load zdharma/history-search-multi-word
zplugin light zsh-users/zsh-completions
zplugin light zsh-users/zsh-autosuggestions
zplugin light zsh-users/zsh-syntax-highlighting
zplugin light djui/alias-tips

## Load Oh-My-Zsh plugins
zplugin snippet OMZ::lib/git.zsh
zplugin snippet OMZ::plugins/git/git.plugin.zsh
zplugin snippet OMZ::plugins/gitignore/gitignore.plugin.zsh
