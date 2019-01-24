# Defined in /home/michael/.config/fish/buffer/divideby_multiplyby.fish @ line 9
function multiplyby
	while read -l line
        eval math "$line \* $argv"
    end
end
