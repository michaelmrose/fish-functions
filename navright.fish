# Defined in /home/michael/.config/fish/buffer/navright_rightmostwindow_smart.fish @ line 2
function navright
	if test (math 1800 - (window-right-corner)) -lt 100
    i3 focus output right
  else
        i3 focus right
      end
end
