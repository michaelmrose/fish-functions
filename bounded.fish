# Defined in /home/michael/.config/fish/buffer/bounded_circular.fish @ line 2
function bounded
	set val $argv[1]
  set min $argv[2]
  set max $argv[3]
  if test $val -gt $max
    set val $max
  else if test $val -lt $min
    set val $min
  end
  echo $val
end
