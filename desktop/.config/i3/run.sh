if [ "$1" = "screenshot-fullscreen" ]; then
    maim -u | \
    tee ~/Pictures/screenshot_$(date +%Y-%m-%d_%H-%M-%S).png | \
    xclip -selection clipboard -t image/png -i
    exit
fi

if [ "$1" = "screenshot-selection" ]; then
    maim -s -u | \
    tee ~/Pictures/screenshot_$(date +%Y-%m-%d_%H-%M-%S).png | \
    xclip -selection clipboard -t image/png -i
    exit
fi

if [ "$1" = "record-screen" ]; then
    if pgrep -f "ffmpeg -f x11grab" > /dev/null; then
        pkill -f "ffmpeg -f x11grab"
        notify-send -t 1000 "Screen Recording" "Recording stopped"
        exit
    fi
    SCREEN_SIZE=$(xdpyinfo | grep dimensions | awk '{print $2}')
    ffmpeg -f x11grab -video_size $SCREEN_SIZE -i $DISPLAY -an \
    ~/Videos/recording_$(date +%Y-%m-%d_%H-%M-%S).mkv > /dev/null 2>&1 &
    exit
fi

