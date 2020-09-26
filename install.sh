#! /usr/bin/bash
# this script is a work in progress, do not use
# the following lines require internet
# TODO: add a version of this script that builds a bare version 
# of thsi scipt so that I can setup a disconnected server with 
# a laptop that has already been configured 

#powerline
pip3 install --user powerline-status

#base16shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

#nvim and development tools
sudo dnf install "Development Tools"
sudo dnf install cmake
sudo dnf install node npm
sudo dnf install go
sudo dnf install python-devel
sudo dnf install neovim
sudo dnf install rsync
pip3 install --user pynvim

#plugged
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

#alacritty
sudo dnf copr enable -y pschyska/alacritty
sudo dnf install -y alacritty  

#copies all the new dotfiles over, stomps on local stuff BEWARE
rsync -aAXP ./.bashrc ~
rsync -aAXP ./.config/alacritty ~/.config
rsync -aAXP ./.config/fontconfig  ~/.config
rsync -aAXP ./.config/nvim ~/.config
rsync -aAXP ./.config/powerline ~/.config
rsync -aAXP ./.ssh ~
rsync -aAXP ./.gnupg ~
rsync -aAXP ./.tmux.conf ~
rsync -aAXP ./.gitconfig-source ~/.gitconfig

restorecon -R ~

gpg --import ./csmith.key

#This runs the PlugInstall function and all post install hooks
nvim --headless +PlugInstall +qall
