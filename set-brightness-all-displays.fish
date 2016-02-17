function set-brightness-all-displays
	set displays (get-connected-displays)
    for i in $displays
        set-brightness $i $argv
        # xrandr --output $i --brightness $argv
    end
end
