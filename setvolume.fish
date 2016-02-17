function setvolume
	ponymix (match-lists (car $argv) "+ -" "increase decrease" set-volume) (stripsign $argv)
    signal-i3blocks output
end
