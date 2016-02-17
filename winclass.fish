function winclass
	xprop -id (wininfo id dec) | grep WM_CLASS | cut -d '"' -f4
end
