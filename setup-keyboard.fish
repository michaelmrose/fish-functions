# Defined in /usr/home/michael/.config/fish/buffer/setup-keyboard.fish @ line 2
function setup-keyboard
    fk xcape
	xmodmap ~/.config/xkeys/keys
    xcape-file ~/.config/xkeys/xcapes
  # xset r rate 250 30
  xset r rate 500 30
  if not exists $argv
      numlocked
      # fucking-caps-led 0
      # fix-touchscreen
  end
  # msg keyboard setup
  # set -U SYMBOLLOCK true
  # twmnc -d 200 -id 1 --content "keyboard setup"
end
