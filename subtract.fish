# Defined in /home/michael/.config/fish/buffer/subtract.fish @ line 1
function subtract
	while read -l line
    math $line - $argv
  end
end
