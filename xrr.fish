function xrr
    switch $argv
        case center
            xrandr --dpi 163 --output DP-2 --auto --output DP-0 --off --output HDMI-0 --off
        case all
            xrandr --dpi 163 --output DP-0 --pos 0x0  --mode 3840x2160 --output DP-2 --pos 3840x0 --mode 3840x2160 --output HDMI-0 --pos 7680x0 --mode 1920x1080 --scale 2.0x2.0 --panning 3840x2160
        case 'toggle'
            if test (count (get-connected-displays)) -eq 3
                xrr center
            else
                xrr all
            end
    end
    wp recall
    restart picom
end
