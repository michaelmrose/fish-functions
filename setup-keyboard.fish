function setup-keyboard
	xmodmap ~/.config/xkeys/keys
  xcafe-file ~/.config/xkeys/xcapes
  xdotool key Num_Lock
end
