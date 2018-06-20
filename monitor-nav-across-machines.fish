# Defined in /home/michael/.config/fish/buffer/monitor-nav-across-machines_mo.fish @ line 2
function monitor-nav-across-machines
	set window (xdotool getactivewindow)
    i3 focus $argv
    switch $argv
        case left
            set dir right
        case right
            set dir left
    end
    
    set newwindow (xdotool getactivewindow)
    if match $newwindow $window
        echo true
        switch-machines
        remote-i3 focus $dir
        remote-i3 focus $dir
        remote-i3 focus $dir
    end
end
