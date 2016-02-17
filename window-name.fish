function window-name
	if defined wmctrl
        set winid $argv
        set winid (ensure-hex $winid )
        set window (wmctrl -lx | grep $winid)
        set classname (echo $window | cut -d " " -f4 | cut -d "." -f2)
        set title (echo $window | cut -d "-" -f2- | cut -d " " -f2-)
        echo $classname $title
    else
        return 1
    end
end
