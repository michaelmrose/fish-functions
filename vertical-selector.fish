function vertical-selector
	set label $argv[1]
  set input $argv[2]
  yad --text "$label" --text-align center --scale --value "$input" --geometry=10x300 --vertical --button gtk-ok:0 --print-partial
end
