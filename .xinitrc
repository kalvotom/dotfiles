[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

xrandr --dpi 166 &

setxkbmap -layout "us,cz_qwerty" -option "grp:alt_shift_toggle" &

source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh &

dbus-update-activation-environment --systemd DISPLAY &
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh) &
export SSH_AUTH_SOCK &

xbindkeys &

compton --config .compton.conf -b &

feh --bg-scale /home/kalvin/documents/backgrounds/weyland.png &

xss-lock -- i3lock -n -i /home/kalvin/documents/backgrounds/weylandHD.png &

# exec dbus-launch awesome
exec dbus-launch i3
