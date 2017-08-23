# Defined in /home/michael/.config/fish/buffer/screenshot-desktop.fish @ line 2
function screenshot-desktop
	set current (get-focused-workspace)
  maim --opengl -x (get-focused-display-x-offset) -y (get-focused-display-y-offset) -w (get-focused-display-width) -h (get-focused-display-height) /tmp/screenshots/$current.png
  echo taking a screenshot of $current
end
