# Defined in /home/michael/.config/fish/buffer/prune-desktop-screenshots_scre.fish @ line 34
function screenshot-desktop
	set current (get-focused-workspace)
  maim --opengl -x (get-focused-display-x-offset) -y (get-focused-display-y-offset) -w (get-focused-display-width) -h (get-focused-display-height) /tmp/screenshots/$current.png
end
