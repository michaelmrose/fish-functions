# Defined in /home/michael/.config/fish/buffer/divideby_multiplyby.fish @ line 2
function divideby
	while read -l line
      eval math "$line / $argv"
  end
end
