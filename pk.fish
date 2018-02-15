# Defined in /home/michael/.config/fish/buffer/pk.fish @ line 1
function pk
	while read -l line
    set acc $acc $line
  end
  echo $acc | rofi -dmenu -i -p "select"
end
