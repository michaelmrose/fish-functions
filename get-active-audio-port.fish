function get-active-audio-port
    if string match -r (pactl get-default-sink) '.*usb.*'
        echo headphones
    else
        echo speaker
    end
end
