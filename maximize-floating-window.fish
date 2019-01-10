# Defined in /home/michael/.config/fish/buffer/maximize-floating-window.fish @ line 1
function maximize-floating-window
	set pos (get-focused-display-position)
    set size (calculate-available-space)
    i3 move absolute position $pos
    i3 resize set $size
end
