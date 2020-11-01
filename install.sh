#! /usr/bin/bash
# this script is a work in progress, do not use if you haven't read it over
# the following lines require internet

#base16shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

#nvim and development tools
sudo dnf group install -y "Development Tools"
sudo dnf install -y cmake \
 node npm \
 go \
 python-devel \
 neovim \
 rsync \
 ninja-build \
 gnupg2 pinentry-curses pcsc-lite pcsc-lite-libs gnupg2-smime

# neovim python plugin support
pip3 install --user pynvim

#powerline (the cool status line)
pip3 install --user powerline-status

#plugged (nvim plugin manager)
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

#alacritty (gpu accelerated terminal)
#These are commented out because it's nicer to build from source
#sudo dnf copr enable -y pschyska/alacritty
#sudo dnf install -y alacritty  

#copies all the new dotfiles over, stomps on local stuff BEWARE
rsync -aAXP ./.bashrc ~
rsync -aAXP ./.config/alacritty ~/.config
rsync -aAXP ./.config/fontconfig  ~/.config
rsync -aAXP ./.config/nvim ~/.config
rsync -aAXP ./.config/powerline ~/.config

# ssh and folder permissions
rsync -aAXP ./.ssh ~
chmod 700 ~/.ssh
chmod 600 ~/.ssh/config
chmod 600 ~/.ssh/id_rsa_yubikey.pub

#gpg and folder permissions 
rsync -aAXP ./.gnupg ~
chmod 700 ~/.gnupg
chmod 600 ~/.gnupg/gpg-agent.conf
chmod 600 ~/.gnupg/gpg.conf
chmod 600 ~/.gnupg/scdaemon.conf
chmod 600 ~/.gnupg/sshcontrol

#tmux  
rsync -aAXP ./.tmux.conf ~

#git
rsync -aAXP ./.gitconfig-source ~/.gitconfig

#ideavim
rsync -aAXP ./.ideavimrc ~/.ideavimrc

#restore security context
restorecon -R ~

#import my public key for gpg 
gpg --import ./csmith.key

#This runs the PlugInstall function and all post install hooks
nvim --headless +PlugInstall +qall
nvim --headless +PlugUpdate +qall
