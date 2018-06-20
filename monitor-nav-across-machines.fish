# Defined in /home/michael/.config/fish/buffer/monitor-nav-across-machines_mo.fish @ line 1
function monitor-nav-across-machines
	set window (xdotool getactivewindow)
    i3 focus $argv
    set newwindow (xdotool getactivewindow)
    if [ $window = $newwindow]
        switch-machines
        i3 focus left
        i3 focus left
        i3 focus left
    end
end
