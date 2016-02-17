function is-fullscreen
	xwininfo -id (wininfo id dec) -all | grep Fullscreen > /dev/null
end
