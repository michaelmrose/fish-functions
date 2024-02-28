function volume-status-line
    switch (get-active-audio-port)
        case headset
            set icon 
        case speaker
            set icon 
    end
    set volume (ponymix get-volume)
    i3status-rs-colorize Warning $icon $volume%
end
