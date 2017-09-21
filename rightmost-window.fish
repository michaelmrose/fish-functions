# Defined in /home/michael/.config/fish/buffer/rightmost-window.fish @ line 2
function rightmost-window
	set w (get-focused-display-width)
  set c (window-right-corner)
  set diff (math w - c)
  test $diff -lt 100
  echo c is $c w is $w diff is $diff
end
