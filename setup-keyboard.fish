# Defined in /home/michael/.config/fish/buffer/setup-keyboard.fish @ line 2
function setup-keyboard
	xmodmap ~/.config/xkeys/keys
  xcape-file ~/.config/xkeys/xcapes
  # xset r rate 250 30
  xset r rate 300 30
  if not exists $argv
      numlocked
      fucking-caps-led 0
      fix-touchscreen
  end
  msg keyboard setup
end
