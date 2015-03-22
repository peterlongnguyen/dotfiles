# start i3 on login
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

make all
xbindkeys
exec i3

# set wallpaper on login
sh ~/.fehbg &
