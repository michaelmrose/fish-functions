# Defined in /home/michael/.config/fish/buffer/batterylevel.fish @ line 2
function batterylevel
	
  upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "state|to\ full|percentage"|awk '{print $2}'|sd \n " " 
end
