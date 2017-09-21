# Defined in /home/michael/.config/fish/buffer/rightmost-window.fish @ line 2
function rightmost-window
	set w (get-focused-display-width)
  set c (window-right-corner)
  test (math w - c) -lt 100
  echo c is $c w is $w
end
