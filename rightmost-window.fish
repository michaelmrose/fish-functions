# Defined in /home/michael/.config/fish/buffer/rightmost-window.fish @ line 1
function rightmost-window
	set w (get-focused-display-width)
  set c (widnow-right-corner)
  test (math w - c) -lt 100
end
