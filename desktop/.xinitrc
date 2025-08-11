dbus-update-activation-environment --all
. ~/.xprofile
xrdb -merge .Xresources
# /usr/bin/prime-offload
exec i3
