#! /usr/bin/bash
#this script is a work in progress, do not use
# the following lines require internet

#powerline
pip3 install --user powerline-status

#base16shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

#nvim
sudo dnf install neovim
pip3 install --user pynvim

#plugged
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

#alacritty
sudo dnf copr enable -y pschyska/alacritty
sudo dnf install -y alacritty  

#copies all the new dotfiles over, stomps on local stuff BEWARE
cp ./.bashrc ~
cp -r ./.config ~
cp -r ./.ssh ~
cp -r ./.gnupg ~
cp ./.tmux.conf ~
cp ./.gitconfig-source ~/.gitconfig

#This runs the PlugInstall function and all post install hooks
nvim --headless +PlugInstall +qall
