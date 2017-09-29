# Defined in /home/michael/.config/fish/buffer/navr.fish @ line 2
function navr
	set d (get-focused-display)
  if [ $d = HDMI-0 ]
    xdotool key F12
  else
    i3 focus right
  end
end
