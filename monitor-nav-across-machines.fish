# Defined in /home/michael/.config/fish/buffer/monitor-nav-across-machines_mo.fish @ line 2
function monitor-nav-across-machines
	set window (xdotool getactivewindow)
    i3 focus $argv
    set newwindow (xdotool getactivewindow)
    if [ $window == $newwindow]
        echo true
        switch-machines
        remote-i3 focus $argv
        remote-i3 focus $argv
        remote-i3 focus $argv
    end
end
