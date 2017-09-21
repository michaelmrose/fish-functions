function rightmostwindow
	set w (get-focused-display-width)
  set c (window-right-corner)
  set diff (math $w - $c)
  test $diff -lt 100
end
