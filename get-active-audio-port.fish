function get-active-audio-port
    set active (pactl get-default-sink)
    if string match -r $active '.*usb.*'
        echo headphones
    else
        echo speaker
    end
end
