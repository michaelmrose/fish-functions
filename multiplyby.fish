# Defined in /home/michael/.config/fish/buffer/divideby_multiplyby.fish @ line 8
function multiplyby
	while read -l line
        eval math "$line * $argv"
    end
end
