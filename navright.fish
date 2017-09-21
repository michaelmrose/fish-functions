# Defined in /home/michael/.config/fish/buffer/navright_rightmostwindow_smart.fish @ line 2
function navright
	switch (get-focused-display)
    case HDMI-0
      set w 1920
      set x 0
    case DVI-I-2
      set w 1680
      set x 1680
  end
  set c (xwininfo -id (xdotool getactivewindow) | grep 'Absolute upper-left x' | nth 4 | subtract $w | addto (window-width))
  if test (math $w - $c) -lt 100
    i3 focus output right
  else
    i3 focus right
  end
end
