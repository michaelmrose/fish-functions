# Defined in /home/michael/.config/fish/buffer/rightmostwindow_smarter-nav.fish @ line 34
function navright
	if test (math (window-right-corner) - 1800) -lt 100
    i3 focus output right
  else
        i3 focus right
      end
end
