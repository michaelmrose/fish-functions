# Defined in /home/michael/.config/fish/buffer/setup-keyboard.fish @ line 2
function setup-keyboard
	xmodmap ~/.config/xkeys/keys
  xcape-file ~/.config/xkeys/xcapes
  numlocked
  xset r rate 250 30
  fucking-caps-led 0
  msg keyboard setup
end
