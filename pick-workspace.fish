# Defined in /home/michael/.config/fish/buffer/pick-workspace.fish @ line 1
function pick-workspace
	ws (extract-filename (sxiv -tbfor ~/.config/i3/screenshots/))
end
