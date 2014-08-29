# internet
netctl enable wlp3s0-Cisco38860
netctl start wlp3s0-Cisco38860

# update system, sync repos, install basic tools
pacman -Syu
pacman -S sudo --noconfirm --quiet
pacman -S make --noconfirm --quiet
pacman -S curl --noconfirm --quiet
pacman -S gnome-termninal --noconfirm --quiet

# clears screen of error messages
sudo dmesg -D

# install graphics driver (intel-specific) 
pacman -S xf86-video-intel
pacman -S xorg-xinit
pacman -S xorg-server

# base software
pacman -S package-query --noconfirm --quiet
pacman -S base-devel --noconfirm --quiet

# setup user with sudo rights
useradd peter
passwd peter
visudo

# uncomment %sudo ALL=(ALL) ALL
groupadd sudo peter
usermod -a -G sudo peter

# set timezone
sudo timedatectl set-timezone America/Los_Angeles

# remap keys
pacman -S xorg-xmodmap --noconfirm --quiet
touch ~/.xmodmap
curl https://github.com/peterlnguyen/dotfiles/blob/master/.xmodmap >> ~/.xmodmap

# github setup https://help.github.com/articles/generating-ssh-keys
pacman -S github --noconfirm --quiet
pacman -S openssh --noconfirm --quiet
ssh-keygen -t rsa -C "peterlongnguyen@gmail.com"
touch ~/.gitignore_global
curl https://raw.githubusercontent.com/peterlnguyen/dotfiles/master/.gitignore >> ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
touch ~/.gitconfig
wget ~/.gitconfig https://raw.githubusercontent.com/peterlnguyen/dotfiles/master/.gitconfig

# i3
pacman -S i3-wm --noconfirm --quiet
touch ~/.i3/config
curl https://raw.githubusercontent.com/peterlnguyen/dotfiles/master/.i3/config >> ~/.i3/config

# install yaourt
arch=$(uname -m)
sudo cp /etc/pacman.conf /etc/pacman.conf.bak
echo "" >> /etc/pacman.conf
echo "[archlinuxfr]" >> /etc/pacman.conf
echo "Server = http://repo.archlinux.fr/$arch" >> /etc/pacman.conf
pacman -S yaourt --noconfirm --quiet
yaourt -Sy

# vim
pacman -S vim --noconfirm --quiet
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
touch ~/.vimrc
curl https://raw.githubusercontent.com/peterlnguyen/dotfiles/master/.vimrc >> ~/.vimrc

# bash_profile setup
touch ~/.bash_profile
curl https://raw.githubusercontent.com/peterlnguyen/dotfiles/master/.bash_profile >> ~/.bash_profile
touch ~/.bashrc
touch ~/.bash_aliases
curl https://raw.githubusercontent.com/peterlnguyen/dotfiles/master/.bash_aliases >> ~/.bash_aliases 
echo "set -o vi" >> ~/.bashrc
source ~/.bash_aliases
source ~/.bashrc
source ~/.bash_profile

# programming tools
pacman -S irssi --noconfirm --quiet
pacman -S nvm --noconfirm --quiet
yaourt -S google-chrome --noconfirm --quiet
nvm install v0.10.26
nvm use 0.10
source ~/.nvm/nvm.sh
echo "source ~/.nvm/nvm.sh" >> ~/.bashrc
npm install coffee-script --g

yaourt -S rbenv --noconfirm --quiet
eval "$(rbenv init -)"
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
rbenv install 1.9.3-p547
rbenv rehash

pacman -S python2

# redis
pacman -S redis --noconfirm --quiet

# mongo
pacman -S mongodb --noconfirm --quiet




