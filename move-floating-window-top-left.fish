function move-floating-window-top-left
	set xpos (math (get-focused-display-x-offset) + (get-border-floating) + 1)
  set ypos (math (get-focused-display-y-offset) + (get-border-floating) + 1)
  xdotool getactivewindow windowmove  $xpos $ypos
end
