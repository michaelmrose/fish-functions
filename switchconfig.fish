function switchconfig
	set primary DVI-I-0
    set secondary DVI-I-1
    switch $argv
        case "single"
            xrandr --output $primary --auto --output $secondary --off
        case "other"
            xrandr --output $secondary --auto --output $primary --off
        case "dual"
            xrandr --output $primary --auto --output $secondary --auto --left-of $primary
    end
end
