# Defined in /home/michael/.config/fish/buffer/navright.fish @ line 2
function navright
	if [ (get-focused-display) = HDMI-0 ]
    set c 1680
  else
    set c 0
  end
	if test (math 1800 - $c) -lt 100
    i3 focus output right
  else
        i3 focus right
      end
end
