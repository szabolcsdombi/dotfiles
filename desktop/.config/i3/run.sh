if [ "$1" = "screenshot-fullscreen" ]; then
    mkdir -p ~/screenshots
    maim -u | \
    tee ~/screenshots/screenshot_$(date +%Y-%m-%d_%H-%M-%S).png | \
    xclip -selection clipboard -t image/png -i
    exit
fi

if [ "$1" = "screenshot-selection" ]; then
    mkdir -p ~/screenshots
    maim -s -u | \
    tee ~/screenshots/screenshot_$(date +%Y-%m-%d_%H-%M-%S).png | \
    xclip -selection clipboard -t image/png -i
    exit
fi

if [ "$1" = "record-screen" ]; then
    if pgrep -f "ffmpeg -f x11grab" > /dev/null; then
        pkill -f "ffmpeg -f x11grab"
        notify-send -t 1000 "Screen Recording" "Recording stopped"
        exit
    fi
    mkdir -p ~/screenshots
    SCREEN_SIZE=$(xdpyinfo | grep dimensions | awk '{print $2}')
    ffmpeg -f x11grab -video_size $SCREEN_SIZE -i $DISPLAY -an \
    ~/screenshots/recording_$(date +%Y-%m-%d_%H-%M-%S).mkv > /dev/null 2>&1 &
    exit
fi

