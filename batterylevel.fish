# Defined in /home/michael/.config/fish/buffer/batterylevel.fish @ line 2
function batterylevel
	set battery (upower -i (upower -e | grep 'BAT') | grep -E "state|to\ full|percentage" | condense_lines | condense_spaces | cut -d ' ' -f2-)
  echo $battery
end
