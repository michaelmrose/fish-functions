# Defined in /home/michael/.config/fish/buffer/bounded_circular.fish @ line 14
function circular
	set val $argv[1]
  set min $argv[2]
  set max $argv[3]
  if test $val -gt $max
    set val $min
  else if test $val -lt $min
    set val $max
  end
  echo $val
end
