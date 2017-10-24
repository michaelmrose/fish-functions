# Defined in /home/michael/.config/fish/buffer/batterylevel.fish @ line 1
function batterylevel
	upower -i (upower -e | grep 'BAT') | grep -E "state|to\ full|percentage" | condense_lines | condense_spaces | cut -d ' ' -f2-
end
