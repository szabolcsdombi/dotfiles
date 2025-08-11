if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
sleep 3 && startx
fi
