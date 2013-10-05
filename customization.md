1. Customize prompt: ~/.bashrc
`export PS1="\[$(tput bold)\]\[$(tput setaf 4)\]\u: \w \\$ \[$(tput sgr0)\]"`

2. Decrease title bar vertical padding:
`sudo sed -i "/title_vertical_pad/s/value=\"[0-9]\{1,2\}\"/value=\"0\"/g" /usr/share/themes/Adwaita/metacity-1/metacity-theme-3.xml`  

3. vim, irssi, git, tmux

4. nvm, node
https://www.digitalocean.com/community/articles/how-to-install-node-js-with-nvm-node-version-manager-on-a-vps#installation
https://github.com/creationix/nvm

Install nvm:
`curl https://raw.github.com/creationix/nvm/master/install.sh | sh`

Add this line to your ~/.bash_profile or ~/.bashrc
`source ~/.nvm/nvm.sh`

install node version of choice 
`nvm install v0.10.20`

5. rbenv, ruby-build, ruby
http://www.rubyinside.com/rbenv-a-simple-new-ruby-version-management-tool-5302.html
https://github.com/sstephenson/ruby-build

Install rbenv
`sudo apt-get install rbenv`

Run this command
`rbenv rehash`

Add this line to your ~/.bash_profile or ~/.bashrc
`eval "$(rbenv init -)"`

Install ruby-build
`sudo apt-get install ruby-build`

Run this command
`rbenv rehash`

Debian driver:
https://wiki.debian.org/ATIProprietary#AMD_Catalyst_12.6

Compiz:
sudo apt-get install compiz-fusion-bcop 


