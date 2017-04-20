function rfi
	set bindings -kb-accept-custom "Return"
  # set i3colors (i3-i3colors)
    switch $argv[1]
        case run
            rofi -kb-accept-custom "Return" -run-list-command 'fish -c functions' -show run -m (display-number)
            # rofi -run-list-command 'fish -c functions' -kb-accept-custom "Return" -show run
            # rofi -show run
        case drun
          /usr/bin/rofi -show drun -m (display-number)
      case calc
        echo $argv[2..-1] | rfi enter "result: " (wcalc -q (rfi enter 'calc: ')| trim)
        case window
            eval rofi -show window
        case history
          rfi match 'select: ' (println (history) | grep -i (vals 2..-1 $argv))
        case match
            if test (count $argv) -lt 3
                return 1
            end
            println $argv[3..-1] | rofi -dmenu -i -p "$argv[2]" -m (display-number)
        case menu
            println "" | rofi $bindings -dmenu -i -p "$argv[2..-1]" -m (display-number)
        case enter
            echo '' | rofi -dmenu -p "$argv[2..-1]" -m (display-number)
        case ssh
            rofi -show ssh -m (display-number)
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
