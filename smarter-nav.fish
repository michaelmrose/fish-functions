# Defined in /home/michael/.config/fish/buffer/navright_rightmostwindow_smart.fish @ line 35
function smarter-nav
	switch $argv
    case left
      if leftmostwindow
        i3 focus output left
      else
        i3 focus left
      end
    case right
      if rightmostwindow
        i3 focus output right
      else
        i3 focus right
      end
  end
end
