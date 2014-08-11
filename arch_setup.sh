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

# github setup https://help.github.com/articles/generating-ssh-keys
pacman -S github --noconfirm --quiet
pacman -S openssh --noconfirm --quiet
ssh-keygen -t rsa -C "youremail@email.com"

# i3
pacman -S i3-wm --noconfirm --quiet

# install yaourt
arch=$(uname -m)
sudo cp /etc/pacman.conf /etc/pacman.conf.bak
echo "" >> /etc/pacman.conf
echo "[archlinuxfr]" >> /etc/pacman.conf
echo "Server = http://repo.archlinux.fr/$arch" >> /etc/pacman.conf
pacman -S yaourt --noconfirm --quiet

# vim
pacman -S vim --noconfirm --quiet
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# bash_profile setup
touch ~/.bash_profile
touch ~/.bashrc
echo "set -o vi" >> ~/.bashrc
source ~/.bash_aliases
source ~/.bashrc

# programming tools
pacman -S irssi --noconfirm --quiet
pacman -S nvm --noconfirm --quiet
yaourt -S google-chrome --noconfirm --quiet
nvm install v0.10.26
npm install coffee-script --g

# redis
pacman -S redis --noconfirm --quiet

# mongo
pacman -S mongodb --noconfirm --quiet




