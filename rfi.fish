function rfi
	set bindings -kb-accept-custom "Return"
  set info (explode-words (i3-color-rofi))[1..-2]
  set switches (odds $info)
  set colors (evens $info)
  for i in (seq (count $switches))
    set args $args $switches[$i] \"$colors[$i]\"
  end
    switch $argv[1]
        case run
            rofi $args $bindings -show run
            #dmenu_run -nb "black" -sf "#036300" -sb "#A6CD01" -nf "grey" -b -l 10 -i -p "Command: "
        case window
            rofi $args -show window
        case match
            if test (count $argv) -lt 3
                return 1
            end
            println $argv[3..-1] | rofi -dmenu -i -p $argv[2]
        case menu
            println "" | rofi $bindings -dmenu -p $argv[2]
        case enter
            echo '' | rofi -dmenu -p $argv[2]
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
