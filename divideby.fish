# Defined in /home/michael/.config/fish/buffer/divideby.fish @ line 2
function divideby
	while read -l line
      eval math "$line / $argv"
  end
end
