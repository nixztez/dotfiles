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

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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
for f in $HOME/.config/zsh/config/*?.zsh; do
    . "$f"
done

# Use rationalise-dot function
zle -N rationalise-dot
bindkey . rationalise-dot
bindkey -M isearch . self-insert

# Load plugin manager
source $HOME/.config/zsh/pz/pz.zsh

## Load plugins
pz prompt romkatv/powerlevel10k
pz prompt -a sindresorhus/pure

# pz source zdharma/history-search-multi-word
pz source zsh-users/zsh-completions
pz source zsh-users/zsh-autosuggestions
pz source zsh-users/zsh-syntax-highlighting
pz source djui/alias-tips

## Load Oh-My-Zsh plugins
# pz source ohmyzsh/ohmyzsh lib/git.zsh
pz source ohmyzsh/ohmyzsh plugins/git/git.plugin.zsh
pz source ohmyzsh/ohmyzsh plugins/gitignore/gitignore.plugin.zsh

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
