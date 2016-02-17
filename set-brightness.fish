function set-brightness
	set display $argv[1]
    set number $argv[2]
    set adjustment (stripsign $number)
    set currentval (get-brightness $display)
    if expr $number : +[0-9]\* > /dev/null
        set adjustment (math $currentval + $adjustment)
    end
    if expr $number : -[0-9]\* > /dev/null
        set adjustment (math $currentval - $adjustment)
    end
    xrandr  --output $display  --brightness (wcalc -q "$adjustment / 100")
end
