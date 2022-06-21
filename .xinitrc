setxkbmap -layout "us,ru" -variant ",winkeys" -option "grp:ctrl_shift_toggle"
#setxkbmap -option "ctrl:nocaps"
#setxkbmap -option caps:swapctrl
setxkbmap -option "ctrl:swapcaps"
xcompmgr -c &
feh --bg-scale /home/pxl/docs/wall/wall3.jpg &
xbindkeys -p
syndaemon -i 0.5 -d
conky 2>> /home/pxl/.config/conky/error.log
numlockx &
# see https://unix.stackexchange.com/a/295652/332452
source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

# see https://wiki.archlinux.org/title/GNOME/Keyring#xinitrc
eval $(/usr/bin/gnome-keyring-daemon --start)
export SSH_AUTH_SOCK

# see https://github.com/NixOS/nixpkgs/issues/14966#issuecomment-520083836
mkdir -p "$HOME"/.local/share/keyrings

exec i3
