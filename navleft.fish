# Defined in /home/michael/.config/fish/buffer/leftmostwindow_navleft_navrigh.fish @ line 6
function navleft
	switch (get-focused-display)
    case HDMI-0
      set w 1920
      set x 1680
    case DVI-I-2
      set w 1680
      set x 0
  end
	if test (xwininfo -id (xdotool getactivewindow) | grep 'Absolute upper-left X' | nth 4 | subtract $x) -lt 100
    i3 focus output left
  else
    i3 focus left
  end
end
