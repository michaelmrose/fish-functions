# Defined in /home/michael/.config/fish/buffer/timer.fish @ line 1
function timer
	set timerfile /tmp/mytimers
    set com $argv[1]
    set title $argv[2]
    # duration in seconds
    set duration $argv[3]
    switch $com
        case ls
            if not test -f $timerfile
                echo none
            else
                cat $timerfile
            end
    end
end
