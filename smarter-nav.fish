# Defined in /home/michael/.config/fish/buffer/smarter-nav.fish @ line 1
function smarter-nav
	switch $argv
    case left
      if leftmost-window
        i3 focus output left
      else
        i3 focus left
      end
    case right
      if rightmost-window
        i3 focus output right
      else
        i3 focus right
      end
  end
end
