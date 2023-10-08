function volume-status-line
    switch (get-active-audio-port)
        case analog-output-headphones
            set icon 
        case analog-output-lineout
            set icon 
    end
    set volume (amixer -c 2 get Master | grep -oP '\[\d+%\]' | awk -F"[" '{gsub(/%|\]/,""); print $2}')
    i3status-rs-colorize Warning $icon $volume%
end
