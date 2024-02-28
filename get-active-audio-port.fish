function get-active-audio-port
    set active (pactl list short sinks|g RUNNING|choose 1)
    if string match -r $active '.*usb.*'
        echo headphones
    else
        echo speaker
    end
end
