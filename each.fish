# Defined in /home/michael/.config/fish/buffer/x_xs.fish @ line 2
function each
	while read -l line
      eval $argv $line
  end
  return 0
end
