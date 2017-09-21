# Defined in /home/michael/.config/fish/buffer/rightmostwindow_smarter-nav.fish @ line 2
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
