# Defined in /home/michael/.config/fish/buffer/x_xs.fish @ line 10
function all
	while read -l line
      set acc $acc \'$line\'
  end
  eval $argv $acc
end
