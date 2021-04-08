#!/usr/bin/bash

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

read -p $'!!!WARNING!!! This script will completely override existing configuration, are you sure that you would like to continue? \nProceed? [y/N]: ' -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo 'Symlinking files!'
    mkdir -p ~/.config

    echo 'Symlinking ~/.zshenv'
    ln -sf "$SCRIPTPATH/.zshenv" ~/.zshenv

    echo 'Symlinking ~/.config/zsh'
    rm -rf ~/.config/zsh
    ln -sf "$SCRIPTPATH/.config/zsh" ~/.config

    echo 'Symlinking ~/.tmux.conf'
    ln -sf "$SCRIPTPATH/.tmux.conf" ~/.tmux.conf

    echo 'Symlinking ~/.vim'
    rm -rf ~/.vim
    ln -sf "$SCRIPTPATH/.vim" ~

    echo 'Complete!'
fi
