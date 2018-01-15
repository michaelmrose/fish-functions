# Defined in /home/michael/.config/fish/buffer/appendto.fish @ line 1
function appendto
	set list $argv[1..-2]
  set value $argv[-1]
  zip-lists $list (repeat (count $list) $value) | condensee_lines
end
