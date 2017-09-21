# Defined in /home/michael/.config/fish/buffer/addto_subtract.fish @ line 1
function addto
	while read -l line
    math $line + $argv
  end
end
