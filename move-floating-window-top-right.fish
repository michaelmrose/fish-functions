function move-floating-window-top-right
	set xpos (math (get-focused-display-x-offset) + (get-focused-display-width) - (get-window-width) - (get-border-floating) -1) 
  set ypos (math (get-focused-display-y-offset) + (get-border-floating) + 1)
  xdotool getactivewindow windowmove  $xpos $ypos
end
