function penta-multi-click
	switch $argv
        case bg
            xdotool key Shift+b
        case fg
            xdotool key f
    end
    sleep 0.1
    set input (explode (rfi enter 'keys: '))
    for i in $input
        set keys $keys $i f
    end
    set keys $keys[1..-2]
    xdotool key $keys
end
