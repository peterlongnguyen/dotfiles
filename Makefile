all:
	xrandr --output HDMI-0 --left-of DVI-0
	xrandr --output DisplayPort-0 --right-of DVI-0
	xrandr --output DVI-0 --left-of DisplayPort-0
	xrandr --output DVI-0 --right-of HDMI-0
	#xrandr --output --newmode "1440x900"
	xrandr --addmode DisplayPort-0 1440x900
	xrandr --output DisplayPort-0 --mode 1440x900
	xrandr --output HDMI-0 --mode 1920x1080
	xrandr --output DVI-0 --mode 1920x1080
	xmodmap ~/.xmodmap
	pulseaudio --start
	xset -dpms
	xset s off
	xmodmap ~/.xmodmap
keys:
	xmodmap ~/.xmodmap
sound:
	xbindkeys
elasticsearch:	
	sudo /usr/share/elasticsearch/bin/elasticsearch
mongo:
	sudo systemctl start mongodb
redis:
	sudo systemctl redis-server &
python:
	virtualenv2 -p /usr/bin/python2 --distribute temp-python &&\
	source temp-python/bin/activate
time:
	timedatectl set-timezone America/Los_Angeles
