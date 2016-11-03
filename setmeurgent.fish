function setmeurgent
	set id (wininfo id dec)
  sleep 5
  xdotool set_window --urgency 1 $id
end
