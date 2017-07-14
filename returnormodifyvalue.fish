# Defined in /home/michael/.config/fish/buffer/returnormodifyvalue_setvolume.fish @ line 2
function returnormodifyvalue
	set val $argv[1]
  if echo $argv[2] | ag '^\+|-' > /dev/null
	  set val (wcalc -q "$vol $argv" | trim)
  else
    set val $argv[2]
  end
  echo $val
end
