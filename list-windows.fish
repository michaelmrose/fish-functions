function list-windows
	
    # transform-with apply function to list replacing list with the result of applying function

    # filter-with apply function to every element of list removing those in which it returned 1

    # apply apply function to every element of a list returning modified list

    set windows (wmctrl -l | cut -d " " -f1)

    if contains "dec" $argv
        transform-with hextodec windows
    end

    if contains "visible" $argv
        filter-with viewable windows
    end

    if contains "names" $argv
        transform-with window-name windows
    end

    println $windows

end
