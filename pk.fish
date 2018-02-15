# Defined in /home/michael/.config/fish/buffer/pk.fish @ line 2
function pk
	while read -l line
    set acc $acc $line
  end
  p $acc | rofi -dmenu -i -p "select"
end
