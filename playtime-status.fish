# Defined in /home/michael/.config/fish/buffer/playtime-status.fish @ line 1
function playtime-status
	mpc status |condense_lines | cut -d\# -f2-|nth 2
end
