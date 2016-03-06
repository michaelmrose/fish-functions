function rfi
	set bindings -kb-accept-custom "Return"
  set colors (i3-colors)
    switch $argv[1]
        case run
            rofi $bindings -show run
        case window
            rofi -show window
        case match
            if test (count $argv) -lt 3
                return 1
            end
            println $argv[3..-1] | rofi -dmenu -i -p $argv[2]
        case menu
            println "" | rofi $bindings -dmenu -p $argv[2]
        case enter
            echo '' | rofi $colors -dmenu -p $argv[2]
        case ssh
            rofi -show ssh
        case windows
            choose-window all
        case visible
            choose-window visible
        case vpn
            vpn choose
        case books
            books
        case volume
            choose-volume
        case video
            choose-video
        case music
            choose-music
        case trans
            choose-trans
        case library
            choose-library
        case session
            choose-session
        case bg
            choose-background
    end
end
