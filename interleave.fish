# Defined in /home/michael/.config/fish/buffer/interleave.fish @ line 2
function interleave
	while read -l line
        set acc $acc $argv $line
    end
    echo $acc
end
