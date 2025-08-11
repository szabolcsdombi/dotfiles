dbus-update-activation-environment --all
. ~/.xprofile
xrdb -merge .Xresources
setxkbmap -option caps:escape
# /usr/bin/prime-offload
exec i3
