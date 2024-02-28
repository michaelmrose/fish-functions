function get-active-audio-port
    set default_sink (pactl get-default-sink)
    if string match -q "*usb*" $default_sink
        echo "headset"
    else
        echo "speaker"
    end
end
