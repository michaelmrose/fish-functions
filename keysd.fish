function keysd
	switch $argv[1]
        case "toggle"
            if pgrep sxhkd
                keysd stop
                msg --id 1 -t "sxhkd disabled"
            else
                keysd mode default
                sxhkd &
                msg --id 1 -t "sxhkd enabled"
            end
        case "mode"
            set mode $argv[2]
            set cfg sxhkdrc
            set dir ~/.config/sxhkd
            rm $dir/$cfg
            ln -s $dir/$mode $dir/$cfg
            kill -10 (pgrep sxhkd)
        case "stop"
            killall sxhkd
        case "start"
            keysd mode default
            sxhkd &
    end
end
