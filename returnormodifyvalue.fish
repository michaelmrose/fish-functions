# Defined in /home/michael/.config/fish/buffer/setvolume.fish @ line 25
function returnormodifyvalue
	set val $argv[1]
  if echo $argv[2] | ag '^\+|-' > /dev/null
	  set val (wcalc -q "$vol $argv" | trim)
  else
    set val $argv
  end
  echo $val
end
