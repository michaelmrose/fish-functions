function numlocked
	if match off (xset q | grep 'Num Lock' | awk '{print $8}')
    xdotool key Num_Lock
  end
end
