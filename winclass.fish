# Defined in /home/michael/.config/fish/buffer/winclass.fish @ line 2
function winclass
	# xprop -id (wininfo id dec) | grep WM_CLASS | cut -d '"' -f4
xprop -id (xdotool getactivewindow) WM_CLASS|awk '{print $4}'
end
