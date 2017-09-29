# Defined in /home/michael/.config/fish/buffer/navr.fish @ line 2
function navr
	if [ (get-focused-display) = HDMI-0 ]
    xdotool --clearmodifiers key F12
  else
    i3 focus right
  end
end
