function honey-i-shrunk-the-window
	i3-msg floating enable
    xdotool getactivewindow windowsize 1 1
    transset -i (xdotool getactivewindow) 0.0
end
