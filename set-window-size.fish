function set-window-size
	set numargs (count $argv)
    switch $numargs
        case "3"
            set method $argv[1]
            set dimension $argv[2]
            set num $argv[3]
        case "2"
            set method $argv[1]
            set dimension $resizedim
            set num $argv[2]
    end

    switch $method
        case "exact"
            set targetsize $num
        case "aprox"
            set targetsize (math "$num * 100")
        case "perc"
            switch $dimension
                case "width"
                    set rescommand get-focused-display-width
                case "height"
                    set rescommand get-focused-display-height
            end
            set maxsize (eval $rescommand)
            set multiplier "0.$num"
            set targetsize (math "$maxsize * $multiplier")
    end
    set sizecommand get-window-{$dimension}
    set currentsize (eval $sizecommand)
    set difference (math "($currentsize - $targetsize) / 16")
    if greaterthanzero $difference
        set direction shrink
    else
        set direction grow
        set difference (abs $difference)
    end
    set command i3-msg resize $direction $dimension $difference px or $difference ppt
    eval $command
end
