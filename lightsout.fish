# Defined in /home/michael/.config/fish/buffer/lightsout.fish @ line 2
function lightsout
	if xset q|gr DPMS|gr disabled
	  sleep 0.02
	  xset dpms force off
  else
    xset -dpms
  end
end
