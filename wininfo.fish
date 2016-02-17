function wininfo
	switch $argv[1]
        case title
            xprop -id (xdotool getactivewindow) _NET_WM_NAME | cut -d "=" -f2 | trim
        case id
                switch $argv[2]
                    case dec
                        xdotool getactivewindow
                    case hex
                        ensure-hex (xdotool getactivewindow)
                end
        case class
            xprop -id (xdotool getactivewindow) WM_CLASS  | cut -d "," -f2  | trim | cut -d '"' -f2
        case pid
            xprop -id (xdotool getactivewindow) _NET_WM_PID | cut -d "=" -f2 | trim
    end
end
