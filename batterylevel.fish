# Defined in /home/michael/.config/fish/buffer/batterylevel.fish @ line 2
function batterylevel
	upower -i (upower -e | grep 'BAT') | grep -E "state|to\ full|percentage" |nth 2 | condense_lines
end
