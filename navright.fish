# Defined in /home/michael/.config/fish/buffer/leftmostwindow_navleft_navrigh.fish @ line 23
function navright
	set wininfo (xwininfo -id (xdotool getactivewindow))
  set ul (p $wininfo | grep 'Absolute upper-left X' | nth 4)
  set winwidth (p $wininfo | grep 'Width:' | nth 2)
	switch (get-focused-display)
    case HDMI-0
      set w 1920
      set x 1680
    case DVI-I-2
      set w 1680
      set x 0
  end
  # set c (p $wininfo | grep 'Absolute upper-left X' | nth 4 | addto (window-width) |subtract $x)
  set diff (math "$w - ($ul + $winwidth - $x)")
  # echo d is $diff ul is $ul winwidth is $winwidth
  if test $diff -lt 100
    i3 focus output right
  else
    i3 focus right
  end
end
