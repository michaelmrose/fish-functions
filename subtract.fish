# Defined in /home/michael/.config/fish/buffer/addto_subtract.fish @ line 8
function subtract
	while read -l line
    math $line - $argv
  end
end
