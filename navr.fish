# Defined in /home/michael/.config/fish/buffer/navr.fish @ line 1
function navr
	set d (get-focused-display)
  if [ $d = HDMI-0 ]
    if synergyconnected
      xdotool key F12
    else
      i3 focus right
    end
  else
    i3 focus right
  end
end
