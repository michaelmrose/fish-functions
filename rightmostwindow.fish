# Defined in /home/michael/.config/fish/buffer/navright_rightmostwindow_smart.fish @ line 20
function rightmostwindow
	# set w (get-focused-display-width)
  switch (get-focused-display)
    case HDMI-0
      set w 1920
    case DVI-I-2
      set w 1680
  end

  set c (window-right-corner)
  set diff (math $w - $c)
  test $diff -lt 100
end
