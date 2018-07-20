# Defined in /home/michael/.config/fish/buffer/numlocked.fish @ line 2
function numlocked
	if string match off (xset q | grep 'Num Lock' | awk '{print $8}')
        xdotool key Num_Lock
  end
end
