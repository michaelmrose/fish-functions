# Defined in /home/michael/.config/fish/buffer/screenshot_screenshot-desktop.fish @ line 21
function screenshot-desktop
	set current (get-focused-workspace)
  maim --opengl -x (get-focused-display-x-offset) -y (get-focused-display-y-offset) -w (get-focused-display-width) -h (get-focused-display-height) /tmp/screenshots/$current
end
