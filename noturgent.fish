function noturgent
	if isnumeric $argv
        xdotool set_window --urgency 0 $argv
    else
        for i in (xdotool search --class $argv)
            noturgent $i
        end
    end
end
