#!/usr/bin/bash

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

read -p $'!!!WARNING!!! This script will completely override existing configuration, are you sure that you would like to continue? \nProceed? [y/N]: ' -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo 'Symlinking files!'

    echo 'Symlinking ~/.config/kitty'
    rm -rf ~/.config/kitty
    ln -sf "$SCRIPTPATH/.config/kitty" ~/.config

    echo 'Symlinking ~/.zshenv'
    ln -sf "$SCRIPTPATH/.zshenv" ~/.zshenv

    echo 'Symlinking ~/.config/zsh'
    rm -rf ~/.config/zsh
    ln -sf "$SCRIPTPATH/.config/zsh" ~/.config

    echo 'Symlinking ~/.vim'
    rm -rf ~/.vim
    ln -sf "$SCRIPTPATH/.vim" ~

    echo 'Symlinking ~/.emacs.d'
    rm -rf ~/.emacs.d
    ln -sf "$SCRIPTPATH/.emacs.d" ~

    echo 'Symlinking ~/.config/gtk-3.0/gtk.css'
    mkdir -p ~/.config/gtk-3.0
    ln -sf "$SCRIPTPATH/.config/gtk-3.0/gtk.css" ~/.config/gtk-3.0/gtk.css

    echo 'Symlinking ~/.config/i3'
    rm -rf ~/.config/i3
    ln -sf "$SCRIPTPATH/.config/i3" ~/.config

    echo 'Symlinking ~/.config/polybar'
    rm -rf ~/.config/polybar
    ln -sf "$SCRIPTPATH/.config/polybar" ~/.config

    echo 'Symlinking ~/.config/rofi'
    rm -rf ~/.config/rofi
    ln -sf "$SCRIPTPATH/.config/rofi" ~/.config

    echo 'Symlinking ~/.config/dunst'
    rm -rf ~/.config/dunst
    ln -sf "$SCRIPTPATH/.config/dunst" ~/.config

    echo 'Complete!'
fi
